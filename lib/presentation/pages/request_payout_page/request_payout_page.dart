import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/payout_item_request.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:ika_smansara/presentation/providers/account_bank/get_account_bank_by_user_id_provider.dart';
import 'package:ika_smansara/presentation/providers/campaign/get_campaign_by_user_id_provider.dart';
import 'package:ika_smansara/presentation/providers/payout/create_payout_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_button.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';
import 'package:ika_smansara/presentation/widgets/horizontal_campaign_card.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class RequestPayoutPage extends ConsumerStatefulWidget {
  const RequestPayoutPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RequestPayoutPageState();
}

class _RequestPayoutPageState extends ConsumerState<RequestPayoutPage> {
  final TextEditingController selectCampaignController =
      TextEditingController();
  final TextEditingController selectBankAccountController =
      TextEditingController();
  final TextEditingController payoutAmountController = TextEditingController();

  var selectedCampaignName = '';
  var selectedCampaignCurrentAmount = '0';
  var selectedCampaignId = '';
  var selectedBankCode = '';
  var selectedBankUserRealName = '';
  var selectedBankAccountNumber = '';

  @override
  Widget build(BuildContext context) {
    var asyncUserData = ref.watch(userDataProvider);
    var asyncListCampaigns = ref.watch(
      getCampaignByUserIdProvider(
        userId: asyncUserData.valueOrNull?.authKey ?? '',
      ),
    );
    var asyncListBankAccount = ref.watch(
      getAccountBankByUserIdProvider(
        userId: asyncUserData.valueOrNull?.authKey ?? '',
      ),
    );
    var saveDataState = ref.watch(createUserPayoutProvider);

    // save request payout state error
    ref.listen(
      createUserPayoutProvider,
      (_, state) => state.showSnackbarOnError(
        context,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Penarikan Dana',
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextButton(
                      textEditingController: selectCampaignController,
                      title: 'Pilih Campaign',
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10.0),
                            ),
                          ),
                          builder: (context) {
                            return asyncListCampaigns.when(
                              data: (data) => ListView.builder(
                                  itemCount: data.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                        top: 16,
                                      ),
                                      child: HorizontalCampaignCard(
                                        imageUrl:
                                            data[index].photoThumbnail ?? '',
                                        campaignName:
                                            data[index].campaignName ?? '',
                                        dateEndCampaign:
                                            data[index].dateEndCampaign ?? '',
                                        campaignGoalAmount:
                                            data[index].goalAmount ?? 0,
                                        campaignCurrentAmount:
                                            data[index].currentAmount ?? 0,
                                        cardWidth: double.infinity,
                                        onTap: () {
                                          setState(() {
                                            selectedCampaignId =
                                                data[index].id ?? '';
                                            selectedCampaignName =
                                                data[index].campaignName ?? '';
                                            selectedCampaignCurrentAmount =
                                                data[index]
                                                    .currentAmount
                                                    .toString();
                                            selectCampaignController.text =
                                                data[index].campaignName ?? '';
                                            Navigator.pop(context);
                                          });
                                        },
                                      ),
                                    );
                                  }),
                              error: (error, stackTrace) => Padding(
                                padding: const EdgeInsets.all(16),
                                child: Center(
                                  child: AutoSizeText("NETWORK ERROR"),
                                ),
                              ),
                              loading: () => Padding(
                                padding: const EdgeInsets.all(16),
                                child: Center(
                                  child: LoadingAnimationWidget.inkDrop(
                                    color: Colors.amber,
                                    size: 35,
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    verticalSpace(16),
                    AutoSizeText(
                      selectedCampaignName,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    verticalSpace(16),
                    Table(
                      children: [
                        TableRow(
                          children: [
                            AutoSizeText(
                              'Dana yang dapat dicairkan',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            AutoSizeText(
                              int.parse(selectedCampaignCurrentAmount)
                                  .toIDRCurrencyFormat()
                                  .toString(),
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    verticalSpace(16),
                    CustomTextButton(
                      textEditingController: selectBankAccountController,
                      title: 'Pilih Rekening Bank',
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10.0),
                            ),
                          ),
                          builder: (context) {
                            return asyncListBankAccount.when(
                              data: (data) => ListView.builder(
                                  itemCount: data.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ListTile(
                                        title: AutoSizeText(
                                          data[index]
                                                  .realUserName
                                                  ?.toUpperCase() ??
                                              '',
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                        subtitle: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            verticalSpace(8),
                                            AutoSizeText(
                                              'Bank ${data[index].bankCode?.toUpperCase()}',
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                            verticalSpace(8),
                                            AutoSizeText(
                                              data[index].bankAccountNumber ??
                                                  '',
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                            verticalSpace(8),
                                          ],
                                        ),
                                      ),
                                    ).onClick(
                                      () => setState(() {
                                        selectedBankCode =
                                            data[index].bankCode ?? '';
                                        selectBankAccountController.text =
                                            '${data[index].bankAccountNumber} ${data[index].bankName}';
                                        selectedBankAccountNumber =
                                            data[index].bankAccountNumber ?? '';
                                        selectedBankUserRealName =
                                            data[index].realUserName ?? '';
                                        Navigator.pop(context);
                                      }),
                                    );
                                  }),
                              error: (error, stackTrace) => Padding(
                                padding: const EdgeInsets.all(16),
                                child: Center(
                                  child: AutoSizeText("NETWORK ERROR"),
                                ),
                              ),
                              loading: () => Padding(
                                padding: const EdgeInsets.all(16),
                                child: Center(
                                  child: LoadingAnimationWidget.inkDrop(
                                    color: Colors.amber,
                                    size: 35,
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    verticalSpace(16),
                    CustomTextField(
                      labelText: 'Dana yang akan ditarik',
                      controller: payoutAmountController,
                      keyboardType: TextInputType.number,
                      onChanged: (inputAmount) {
                        setState(() {
                          if (payoutAmountController.text != 'Rp.') {
                            payoutAmountController.text = int.parse(
                                    (inputAmount != '')
                                        ? inputAmount
                                            .replaceAll('.', '')
                                            .replaceAll('Rp', '')
                                            .replaceAll(' ', '0')
                                            .replaceAll('-', '0')
                                        : '0')
                                .toIDRCurrencyFormat();
                          } else {
                            payoutAmountController.text = '';
                          }
                        });
                      },
                    ),
                    verticalSpace(16),
                  ],
                ),
              ),
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
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: saveDataState.isLoading
                        ? null
                        : () {
                            var payoutItemRequest = PayoutItemRequest(
                              amount: payoutAmountController.text
                                  .replaceAll('.', '')
                                  .replaceAll('Rp', '')
                                  .replaceAll(' ', '0')
                                  .replaceAll('-', '0'),
                              beneficiaryEmail: ref
                                  .watch(userDataProvider)
                                  .valueOrNull
                                  ?.email,
                              beneficiaryAccount: selectedBankAccountNumber,
                              beneficiaryName: selectedBankUserRealName,
                              beneficiaryBank: selectedBankCode,
                              notes:
                                  'Payout for campaign with ID ${selectedCampaignId}',
                              campaignId: selectedCampaignId,
                              userId: ref
                                  .read(userDataProvider)
                                  .valueOrNull
                                  ?.authKey,
                            );

                            Constants.logger.w(
                              payoutItemRequest,
                            );

                            context.displayAlertDialog(
                              title: 'Perhatian',
                              content:
                                  'Apakah anda yakin untuk melanjutkan penarikan sebesar ${payoutAmountController.text} ?',
                              positiveButtonText: 'Ya',
                              onPositivePressed: () {
                                ref
                                    .read(createUserPayoutProvider.notifier)
                                    .postRequestPayout(
                                      payoutItemRequest: payoutItemRequest,
                                    );
                                Navigator.pop(context);
                              },
                            );
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF104993),
                    ),
                    child: saveDataState.isLoading
                        ? LoadingAnimationWidget.horizontalRotatingDots(
                            color: Colors.amber,
                            size: 35,
                          )
                        : AutoSizeText(
                            'Kirim',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
