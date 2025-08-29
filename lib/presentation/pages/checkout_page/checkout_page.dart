import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:group_button/group_button.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/transaction_request.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/pages/checkout_page/methods/button_pay.dart';
import 'package:ika_smansara/presentation/pages/checkout_page/methods/checkout_information_table.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';

class CheckoutPage extends ConsumerStatefulWidget {
  final CampaignDocument? campaign;

  const CheckoutPage(this.campaign, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends ConsumerState<CheckoutPage> {
  final TextEditingController _amountNominal = TextEditingController();
  final GroupButtonController _groupButtonAmountNominalController =
      GroupButtonController();
  final TextEditingController _notesController = TextEditingController();
  final GroupButtonController _groupButtonSelectedPaymentMethodController =
      GroupButtonController();
  final List<String> _paymentMethodName = [
    '1500',
    '5550',
  ];
  final List<String> _defaultAmount = [
    50000.toIDRCurrencyFormat(),
    100000.toIDRCurrencyFormat(),
    200000.toIDRCurrencyFormat(),
    500000.toIDRCurrencyFormat(),
  ];
  var _paymentFee = (0.0 * 0.015).toInt();
  var _paymentMethodValue = ['other_qris'];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _amountNominal.dispose();
    _groupButtonAmountNominalController.dispose();
    _groupButtonSelectedPaymentMethodController.dispose();
    _notesController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Kirim Donasi',
        ),
      ),
      body: Stack(
        children: [
          ListView(
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
                buttons: _defaultAmount,
                enableDeselect: true,
                maxSelected: 1,
                onSelected: (contentSelected, index, isSelected) {
                  setState(() {
                    _amountNominal.text = contentSelected;

                    if (!isSelected) {
                      _amountNominal.text = '';
                    }

                    _groupButtonSelectedPaymentMethodController.selectIndex(0);
                    _paymentFee = (int.parse((_amountNominal.text != '')
                        ? _amountNominal.text
                        .replaceAll('.', '')
                        .replaceAll('Rp', '')
                        .replaceAll(' ', '0')
                        .replaceAll('-', '0')
                        : '0').toDouble() * 0.015).toInt();
                    _paymentMethodValue = ['other_qris'];
                  });
                },
                controller: _groupButtonAmountNominalController,
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
                controller: _amountNominal,
                keyboardType: TextInputType.number,
                onChanged: (inputAmount) {
                  setState(() {
                    if (_amountNominal.text != 'Rp.') {
                      _amountNominal.text = int.parse((inputAmount != '')
                              ? inputAmount
                                  .replaceAll('.', '')
                                  .replaceAll('Rp', '')
                                  .replaceAll(' ', '0')
                                  .replaceAll('-', '0')
                              : '0')
                          .toIDRCurrencyFormat();
                    } else {
                      _amountNominal.text = '';
                    }

                    _defaultAmount.asMap().forEach((index, value) {
                      if (_amountNominal.text != value) {
                        _groupButtonAmountNominalController
                            .unselectIndex(index);
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
              verticalSpace(16),
              AutoSizeText(
                'Pilih Metode Pembayaran',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              verticalSpace(16),
              GroupButton(
                buttons: _paymentMethodName,
                buttonTextBuilder: (selected, buttonName, context) {
                  if (buttonName == '5550') {
                    return 'Virtual Account';
                  } else {
                    return 'QRIS';
                  }
                },
                isRadio: true,
                maxSelected: 1,
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
                controller: _groupButtonSelectedPaymentMethodController,
                onSelected: (contentSelected, index, isSelected) {
                  setState(() {
                    if (contentSelected == '5550') {
                      _paymentFee = int.parse(contentSelected);
                      _paymentMethodValue = [
                        'echannel',
                        'permata_va',
                        'bca_va',
                        'bni_va',
                        'bri_va',
                        'cimb_va',
                        'other_va',
                      ];
                    } else {
                      _paymentFee = (int.parse((_amountNominal.text != '')
                          ? _amountNominal.text
                          .replaceAll('.', '')
                          .replaceAll('Rp', '')
                          .replaceAll(' ', '0')
                          .replaceAll('-', '0')
                          : '0').toDouble() * 0.015).toInt();
                      _paymentMethodValue = ['other_qris'];
                    }

                    Constants.logger.d('$_paymentFee | $_paymentMethodValue');
                  });
                },
              ),
              verticalSpace(16),
              SizedBox(
                height: 200,
                child: CustomTextField(
                  labelText: 'Catatan',
                  controller: _notesController,
                  expands: true,
                  maxLines: null,
                  keyboardType: TextInputType.text,
                  textAlignVertical: TextAlignVertical.top,
                ),
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
                campaignName:
                    (widget.campaign?.campaignName ?? '').toUpperCase(),
                userName: (ref.read(userDataProvider).valueOrNull?.name ?? '')
                    .toUpperCase(),
                amount: int.parse((_amountNominal.text != '')
                        ? _amountNominal.text
                            .replaceAll('.', '')
                            .replaceAll('Rp', '')
                            .replaceAll(' ', '0')
                            .replaceAll('-', '0')
                        : '0')
                    .toIDRCurrencyFormat(),
                paymentFee: _paymentFee.toIDRCurrencyFormat(),
                totalAmount: (_amountNominal.text != '')
                    ? (int.parse(
                              _amountNominal.text
                                  .replaceAll('.', '')
                                  .replaceAll('Rp', '')
                                  .replaceAll(' ', '0')
                                  .replaceAll('-', '0'),
                            ) -
                            _paymentFee)
                        .toIDRCurrencyFormat()
                    : 0.toIDRCurrencyFormat(),
              ),
              verticalSpace(16),
              Divider(
                height: 1,
                color: Colors.grey,
              ),
              verticalSpace(128),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 16,
                ),
                child: buttonPay(
                  isEnable: (int.parse((_amountNominal.text != '')
                          ? _amountNominal.text
                              .replaceAll('.', '')
                              .replaceAll('Rp', '')
                              .replaceAll(' ', '0')
                              .replaceAll('-', '0')
                          : '0') >=
                      50000) &&(_paymentFee != 0),
                   onPress: () {
                    // Validate email before proceeding
                    final userEmail = ref.read(userDataProvider).valueOrNull?.email;
                    if (userEmail == null || userEmail.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Email is required for payment'),
                          backgroundColor: Colors.red,
                        ),
                      );
                      return;
                    }

                    // Basic email validation
                    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                    if (!emailRegex.hasMatch(userEmail)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please enter a valid email address'),
                          backgroundColor: Colors.red,
                        ),
                      );
                      return;
                    }

                    // Check for common invalid email patterns
                    if (userEmail.contains('test.com') ||
                        userEmail.contains('example.com') ||
                        userEmail.split('@')[0].length < 2 ||
                        userEmail.split('@')[1].split('.')[0].length < 2) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please use a valid email address (not test/example emails)'),
                          backgroundColor: Colors.red,
                        ),
                      );
                      return;
                    }

                    var transactionRequestData = TransactionRequest(
                      amount: int.parse(
                        (_amountNominal.text != '')
                            ? _amountNominal.text
                                .replaceAll('.', '')
                                .replaceAll('Rp', '')
                                .replaceAll(' ', '0')
                                .replaceAll('-', '0')
                            : '0',
                      ),
                      paymentFee: _paymentFee,
                      campaignId: widget.campaign?.id,
                      campaignImage: widget.campaign?.photoThumbnail,
                      campaignName: widget.campaign?.campaignName,
                      userId: ref.read(userDataProvider).valueOrNull?.authKey,
                      userName: ref.read(userDataProvider).valueOrNull?.name,
                      userAddress:
                          ref.read(userDataProvider).valueOrNull?.address,
                      userEmail: userEmail,
                      userPhone: ref.read(userDataProvider).valueOrNull?.phone,
                      transactionId: getRandomOrderIdNumber(),
                      backerCount: widget.campaign?.backerCount,
                      currentAmount: widget.campaign?.currentAmount,
                      campaignDescription: widget.campaign?.campaignDescription,
                      categories: widget.campaign?.categories,
                      dateEndCampaign: widget.campaign?.dateEndCampaign,
                      dateStartCampaign: widget.campaign?.dateStartCampaign,
                      goalAmount: widget.campaign?.goalAmount,
                      isActive: widget.campaign?.isActive,
                      isDeleted: widget.campaign?.isDeleted,
                      photoThumbnail: widget.campaign?.photoThumbnail,
                      campaignCreatedBy: widget.campaign?.createdBy,
                      note: _notesController.text.trim(),
                      enabledPayments: _paymentMethodValue,
                    );

                    ref.read(routerProvider).pushNamed(
                          'webview-snap-page',
                          extra: transactionRequestData,
                        );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
