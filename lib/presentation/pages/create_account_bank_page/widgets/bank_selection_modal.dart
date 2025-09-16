import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/providers/account_bank/get_list_bank_provider.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class BankSelectionModal extends ConsumerWidget {
  final TextEditingController bankNameController;
  final Function(String, String) onBankSelected;

  const BankSelectionModal({
    super.key,
    required this.bankNameController,
    required this.onBankSelected,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncListBank = ref.watch(getListBankDocProvider);

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    'Bank ${data[index].bankCode?.toUpperCase()}',
                  ),
                ],
              ),
            ),
          ).onClick(
            () {
              bankNameController.text =
                  'Bank ${data[index].bankCode?.toUpperCase()}';
              onBankSelected(
                data[index].bankCode ?? '',
                data[index].bankName ?? '',
              );
              Navigator.pop(context);
            },
          );
        },
      ),
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
  }
}

extension on Widget {
  Widget onClick(VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: this,
    );
  }
}