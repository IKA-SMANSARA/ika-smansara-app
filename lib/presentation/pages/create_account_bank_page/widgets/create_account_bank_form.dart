import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_button.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:ika_smansara/presentation/providers/account_bank/create_user_bank_account_provider.dart';

import 'bank_selection_modal.dart';

class CreateAccountBankForm extends ConsumerWidget {
  final TextEditingController bankNameController;
  final TextEditingController bankAccountNumberController;
  final TextEditingController bankAccountNameController;
  final String selectedBankCode;
  final String selectedBankName;
  final Function(String, String) onBankSelected;
  final VoidCallback onSubmit;

  const CreateAccountBankForm({
    super.key,
    required this.bankNameController,
    required this.bankAccountNumberController,
    required this.bankAccountNameController,
    required this.selectedBankCode,
    required this.selectedBankName,
    required this.onBankSelected,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final saveDataState = ref.watch(createUserBankAccountProvider);

    return Column(
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
              builder: (context) => BankSelectionModal(
                bankNameController: bankNameController,
                onBankSelected: onBankSelected,
              ),
            );
          },
        ),
        const SizedBox(height: 16),
        CustomTextField(
          labelText: 'Nomor Rekening',
          controller: bankAccountNumberController,
          keyboardType: TextInputType.numberWithOptions(
            decimal: false,
            signed: false,
          ),
        ),
        const SizedBox(height: 16),
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
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          height: 45,
          child: ElevatedButton(
            onPressed: saveDataState.isLoading ? null : onSubmit,
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
    );
  }
}