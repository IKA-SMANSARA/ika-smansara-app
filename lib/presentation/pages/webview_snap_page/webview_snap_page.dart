import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/transaction_request.dart';

class WebviewSnapPage extends ConsumerWidget {
  final TransactionRequest transactionRequest;
  const WebviewSnapPage(this.transactionRequest, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: AutoSizeText(
          transactionRequest.toString(),
        ),
      ),
    );
  }
}
