import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';

class DetailTransaction extends ConsumerWidget {
  final String transactionId;

  const DetailTransaction({required this.transactionId, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          transactionId,
        ),
        leading: BackButton(
          onPressed: () {
            ref.read(routerProvider).goNamed('main');
          },
        ),
      ),
      body: Container(
        child: Center(
          child: AutoSizeText(
            transactionId,
          ),
        ),
      ),
    );
  }
}
