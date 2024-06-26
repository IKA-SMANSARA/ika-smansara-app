import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_document.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_request.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/providers/account_bank/get_list_bank_provider.dart';
import 'package:ika_smansara/presentation/providers/account_bank/update_account_bank_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_button.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class UpdateAccountBankPage extends ConsumerStatefulWidget {
  final UserAccountBankDocument userAccountBankDocument;

  const UpdateAccountBankPage({
    super.key,
    required this.userAccountBankDocument,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UpdateAccountBankPageState();
}

class _UpdateAccountBankPageState extends ConsumerState<UpdateAccountBankPage> {
  final TextEditingController bankNameController = TextEditingController();
  final TextEditingController bankAccountNumberController =
      TextEditingController();
  final TextEditingController bankAccountNameController =
      TextEditingController();
  var selectedBankCode = '';
  var selectedBankName = '';

  @override
  void initState() {
    super.initState();

    bankNameController.text =
        'Bank ${widget.userAccountBankDocument.bankCode?.toUpperCase()}';
    bankAccountNumberController.text =
        widget.userAccountBankDocument.bankAccountNumber.toString();
    bankAccountNameController.text =
        widget.userAccountBankDocument.realUserName ?? '';
    selectedBankCode = widget.userAccountBankDocument.bankCode ?? '';
  }

  @override
  void dispose() {
    super.dispose();
    bankNameController.dispose();
    bankAccountNumberController.dispose();
    bankAccountNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var asyncListBank = ref.watch(getListBankDocProvider);
    var updateDataState = ref.watch(updateUserAccountBankProvider);

    // list bank state error
    ref.listen(
      getListBankDocProvider,
      (_, state) => state.showSnackbarOnError(
        context,
      ),
    );

    // update data state error
    ref.listen(
      updateUserAccountBankProvider,
      (_, state) => state.showSnackbarOnError(
        context,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText('Ubah data rekening bank'),
      ),
      body: ListView(
        children: [
          verticalSpace(16),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextButton(
                  title: widget.userAccountBankDocument.bankName ?? 'Nama Bank',
                  textEditingController: bankNameController,
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10.0),
                        ),
                      ),
                      builder: (context) {
                        return asyncListBank.when(
                          data: (data) => ListView.builder(
                              itemCount: data.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText(
                                          'Bank ${data[index].bankCode?.toUpperCase()}',
                                        ),
                                      ],
                                    ),
                                  ),
                                ).onClick(
                                  () {
                                    setState(() {
                                      bankNameController.text =
                                          'Bank ${data[index].bankCode?.toUpperCase()}';
                                      selectedBankCode =
                                          data[index].bankCode ?? '';
                                      selectedBankName =
                                          data[index].bankName ?? '';
                                    });

                                    Navigator.pop(context);
                                  },
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
                  labelText: 'Nomor Rekening',
                  controller: bankAccountNumberController,
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: false,
                    signed: false,
                  ),
                ),
                verticalSpace(16),
                CustomTextField(
                  labelText: 'Nama Pemilik Rekening',
                  controller: bankAccountNameController,
                  keyboardType: TextInputType.name,
                ),
                AutoSizeText(
                  '*pastikan nama ini sama seperti pada buku rekening',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.red,
                  ),
                ),
                verticalSpace(16),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: updateDataState.isLoading
                        ? null
                        : () {
                            var userAccountBankRequest = UserAccountBankRequest(
                              id: widget.userAccountBankDocument.id,
                              bankAccountNumber:
                                  bankAccountNumberController.text,
                              bankName: bankNameController.text,
                              bankCode: selectedBankCode,
                              realUserName: bankAccountNameController.text,
                              userId: ref
                                  .read(userDataProvider)
                                  .valueOrNull
                                  ?.authKey,
                              userName: widget.userAccountBankDocument.userName,
                              isDefault: false,
                              email:
                                  ref.read(userDataProvider).valueOrNull?.email,
                            );

                            Constants.logger.d(userAccountBankRequest);

                            ref
                                .read(updateUserAccountBankProvider.notifier)
                                .postUpdateAccountBank(
                                  userAccountBankRequest:
                                      userAccountBankRequest,
                                );
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF104993),
                    ),
                    child: updateDataState.isLoading
                        ? LoadingAnimationWidget.newtonCradle(
                            color: Colors.amber,
                            size: 35,
                          )
                        : AutoSizeText(
                            'Simpan Rekening Bank',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(16),
        ],
      ),
    );
  }
}
