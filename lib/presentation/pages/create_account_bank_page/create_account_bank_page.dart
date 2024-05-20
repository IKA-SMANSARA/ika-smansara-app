import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_request.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/providers/account_bank/create_user_bank_account_provider.dart';
import 'package:ika_smansara/presentation/providers/account_bank/get_list_bank_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_button.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:uuid/uuid.dart';

class CreateAccountBankPage extends ConsumerStatefulWidget {
  const CreateAccountBankPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateAccountBankPageState();
}

class _CreateAccountBankPageState extends ConsumerState<CreateAccountBankPage> {
  final TextEditingController bankNameController = TextEditingController();
  final TextEditingController bankAccountNumberController =
      TextEditingController();
  final TextEditingController bankAccountNameController =
      TextEditingController();
  var selectedBankCode = '';
  var selectedBankName = '';

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
    var saveDataState = ref.watch(createUserBankAccountProvider);

    // list bank state error
    ref.listen(
      getListBankDocProvider,
      (_, state) => state.showSnackbarOnError(
        context,
      ),
    );

    // save data state error
    ref.listen(
      createUserBankAccountProvider,
      (_, state) => state.showSnackbarOnError(
        context,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Tambahkan Rekening Bank',
        ),
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
                  title: 'Nama Bank',
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
                    onPressed: saveDataState.isLoading
                        ? null
                        : () {
                            var userAccountBankRequest = UserAccountBankRequest(
                              bankAccountNumber:
                                  bankAccountNumberController.text,
                              bankName: selectedBankName,
                              bankCode: selectedBankCode,
                              realUserName: bankAccountNameController.text,
                              userId: ref
                                  .read(userDataProvider)
                                  .valueOrNull
                                  ?.authKey,
                              userName: Uuid()
                                  .v4()
                                  .toString()
                                  .removeWhitespace
                                  .replaceAll('-', ''),
                              isDefault: false,
                              email:
                                  ref.read(userDataProvider).valueOrNull?.email,
                            );

                            ref
                                .read(createUserBankAccountProvider.notifier)
                                .postAccountBank(
                                  userAccountBankRequest:
                                      userAccountBankRequest,
                                );
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF104993),
                    ),
                    child: saveDataState.isLoading
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
