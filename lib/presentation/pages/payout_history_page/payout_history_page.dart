import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';

class PayoutHistoryPage extends ConsumerWidget {
  const PayoutHistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Penarikan Data',
        ),
      ),
      floatingActionButton: ElevatedButton.icon(
        onPressed: () => ref.read(routerProvider).pushNamed(
              'request-payout-page',
            ),
        icon: Icon(
          Icons.payment,
          color: Colors.white,
        ),
        label: AutoSizeText(
          'Penarikan Dana',
        ),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
