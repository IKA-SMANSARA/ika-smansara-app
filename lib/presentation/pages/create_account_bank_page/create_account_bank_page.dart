import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_request.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/providers/account_bank/create_user_bank_account_provider.dart';
import 'package:ika_smansara/presentation/providers/account_bank/get_list_bank_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_button.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';

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
                        return ListView(
                          children: [
                            ...(asyncListBank.when(
                                  data: (data) => data
                                      .map(
                                        (e) => GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              bankNameController.text =
                                                  e.bankName ?? '';
                                              selectedBankCode =
                                                  e.bankCode ?? '';
                                            });

                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              color: Colors.transparent,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(16.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  AutoSizeText(
                                                    e.bankName ?? '',
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  error: (error, stackTrace) => [
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: const Center(
                                        child: Text(
                                          'NETWORK ERROR!',
                                        ),
                                      ),
                                    ),
                                  ],
                                  loading: () => [
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: const Center(
                                        child: CircularProgressIndicator
                                            .adaptive(),
                                      ),
                                    ),
                                  ],
                                ) ??
                                [])
                          ],
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
                    onPressed: () {
                      var userAccountBankRequest = UserAccountBankRequest(
                        bankAccountNumber: bankAccountNumberController.text,
                        bankName: bankNameController.text,
                        bankCode: selectedBankCode,
                        realUserName: bankAccountNameController.text,
                        userId: ref.read(userDataProvider).valueOrNull?.authKey,
                        userName: ref.read(userDataProvider).valueOrNull?.name,
                        isDefault: false,
                        email: ref.read(userDataProvider).valueOrNull?.email,
                      );

                      ref
                          .read(createUserBankAccountProvider.notifier)
                          .postAccountBank(
                            userAccountBankRequest: userAccountBankRequest,
                          );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF104993),
                    ),
                    child: AutoSizeText(
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
