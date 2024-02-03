import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Center(
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => ref.read(userDataProvider.notifier).logout(),
            child: const Text('Logout'),
          ),
        ),
      ),
    );
  }
}
