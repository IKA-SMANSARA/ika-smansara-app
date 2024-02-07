import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:group_button/group_button.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/presentation/extensions/build_context_extension.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/pages/checkout_page/methods/button_pay.dart';
import 'package:ika_smansara/presentation/pages/checkout_page/methods/checkout_information_table.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';

class CheckoutPage extends ConsumerStatefulWidget {
  final CampaignDocument? campaign;

  const CheckoutPage(this.campaign, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends ConsumerState<CheckoutPage> {
  final TextEditingController amountNominal = TextEditingController();
  final GroupButtonController groupButtonAmountNominalController =
      GroupButtonController();

  final List<String> defaultAmount = [
    50000.toIDRCurrencyFormat(),
    100000.toIDRCurrencyFormat(),
    200000.toIDRCurrencyFormat(),
    500000.toIDRCurrencyFormat(),
  ];

  @override
  void dispose() {
    super.dispose();
    amountNominal.dispose();
    groupButtonAmountNominalController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Kirim Donasi',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        children: [
          verticalSpace(16),
          AutoSizeText(
            'Pilih Nominal Donasi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          verticalSpace(16),
          GroupButton(
            buttons: defaultAmount,
            enableDeselect: true,
            maxSelected: 1,
            onSelected: (contentSelected, index, isSelected) {
              setState(() {
                amountNominal.text = contentSelected;

                if (!isSelected) {
                  amountNominal.text = '';
                }
              });
            },
            controller: groupButtonAmountNominalController,
            options: GroupButtonOptions(
              selectedColor: const Color(0xFF104993),
              unselectedColor: const Color(0xFFD9D9D9),
              buttonHeight: 45,
              buttonWidth: 170,
              borderRadius: BorderRadius.circular(100),
              selectedTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              unselectedTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          verticalSpace(16),
          AutoSizeText(
            'Nominal Lainnya',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          verticalSpace(16),
          CustomTextField(
            labelText: '',
            controller: amountNominal,
            keyboardType: TextInputType.number,
            onChanged: (inputAmount) {
              setState(() {
                if (amountNominal.text != 'Rp.') {
                  amountNominal.text = int.parse((inputAmount != '')
                          ? inputAmount
                              .replaceAll('.', '')
                              .replaceAll('Rp', '')
                              .replaceAll(' ', '0')
                              .replaceAll('-', '0')
                          : '0')
                      .toIDRCurrencyFormat();
                } else {
                  amountNominal.text = '';
                }

                defaultAmount.asMap().forEach((index, value) {
                  if (amountNominal.text != value) {
                    groupButtonAmountNominalController.unselectIndex(index);
                  }
                });
              });
            },
            textInputAction: TextInputAction.done,
          ),
          verticalSpace(8),
          AutoSizeText(
            'Minimal donasi Rp.50.000',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 10,
              color: Colors.red,
            ),
            textAlign: TextAlign.center,
          ),
          verticalSpace(32),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          verticalSpace(16),
          AutoSizeText(
            'Informasi Pembayaran Donasi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          verticalSpace(16),
          checkoutInformationTable(
            campaignName: (widget.campaign?.campaignName ?? '').toUpperCase(),
            userName: (ref.read(userDataProvider).valueOrNull?.name ?? '')
                .toUpperCase(),
            amount: int.parse((amountNominal.text != '')
                    ? amountNominal.text
                        .replaceAll('.', '')
                        .replaceAll('Rp', '')
                        .replaceAll(' ', '0')
                        .replaceAll('-', '0')
                    : '0')
                .toIDRCurrencyFormat(),
            paymentFee: getPaymentFee(
              (amountNominal.text != '')
                  ? amountNominal.text
                      .replaceAll('.', '')
                      .replaceAll('Rp', '')
                      .replaceAll(' ', '0')
                      .replaceAll('-', '0')
                  : '0',
            ),
            totalAmount: getTotalPayment(
              (amountNominal.text != '')
                  ? amountNominal.text
                      .replaceAll('.', '')
                      .replaceAll('Rp', '')
                      .replaceAll(' ', '0')
                      .replaceAll('-', '0')
                  : '0',
            ),
          ),
          verticalSpace(16),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          verticalSpace(24),
          buttonPay(
            isEnable: int.parse((amountNominal.text != '')
                    ? amountNominal.text
                        .replaceAll('.', '')
                        .replaceAll('Rp', '')
                        .replaceAll(' ', '0')
                        .replaceAll('-', '0')
                    : '0') >=
                50000,
            onPress: () {
              context.showSnackBar(
                  amountNominal.text.replaceAll('.', '').replaceAll('Rp', ''));
            },
          ),
          verticalSpace(16),
        ],
      ),
    );
  }
}
