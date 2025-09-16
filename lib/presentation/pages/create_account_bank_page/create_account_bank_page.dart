import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/providers/account_bank/create_user_bank_account_provider.dart';
import 'package:ika_smansara/presentation/providers/account_bank/get_list_bank_provider.dart';

import 'methods/index.dart';
import 'widgets/index.dart';

class CreateAccountBankPage extends ConsumerStatefulWidget {
  const CreateAccountBankPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateAccountBankPageState();
}

class _CreateAccountBankPageState extends ConsumerState<CreateAccountBankPage> {
  final CreateAccountBankControllers _controllers = CreateAccountBankControllers();
  var selectedBankCode = '';
  var selectedBankName = '';

  @override
  void dispose() {
    _controllers.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Error handling for list bank
    ref.listen(
      getListBankDocProvider,
      (_, state) => state.showSnackbarOnError(context),
    );

    // Error handling for save data
    ref.listen(
      createUserBankAccountProvider,
      (_, state) => state.showSnackbarOnError(context),
    );

    return Scaffold(
      appBar: AppBar(
        title: const AutoSizeText('Tambahkan Rekening Bank'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                'Tambahkan Rekening Bank',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF104993),
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                'Lengkapi informasi rekening bank Anda',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[600],
                    ),
              ),
              const SizedBox(height: 32),
              CreateAccountBankForm(
                bankNameController: _controllers.bankNameController,
                bankAccountNumberController: _controllers.bankAccountNumberController,
                bankAccountNameController: _controllers.bankAccountNameController,
                selectedBankCode: selectedBankCode,
                selectedBankName: selectedBankName,
                onBankSelected: (bankCode, bankName) {
                  setState(() {
                    selectedBankCode = bankCode;
                    selectedBankName = bankName;
                  });
                },
                onSubmit: () => CreateAccountBankHandler.handleFormSubmission(
                  bankNameController: _controllers.bankNameController,
                  bankAccountNumberController: _controllers.bankAccountNumberController,
                  bankAccountNameController: _controllers.bankAccountNameController,
                  selectedBankCode: selectedBankCode,
                  selectedBankName: selectedBankName,
                  context: context,
                  ref: ref,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
