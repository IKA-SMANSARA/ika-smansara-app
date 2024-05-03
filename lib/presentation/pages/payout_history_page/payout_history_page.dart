import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/providers/payout/get_requested_payout_by_user_id_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class PayoutHistoryPage extends ConsumerWidget {
  const PayoutHistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var userId = ref.read(userDataProvider).valueOrNull?.authKey;
    var asyncRequestedPayoutData = ref.watch(
      getRequestedPayoutByUserIdProvider(
        userId: userId ?? '',
      ),
    );

    // list account bank state error
    ref.listen(
      getRequestedPayoutByUserIdProvider(
        userId: userId ?? '',
      ),
      (_, state) => state.showSnackbarOnError(
        context,
      ),
    );

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
      body: asyncRequestedPayoutData.when(
        data: (data) {
          if (data.isNotEmpty) {
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: AutoSizeText(
                    (data[index].realName ?? '').toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  subtitle: AutoSizeText(
                    'Nomor Referensi : ${data[index].payoutReferenceNo}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  trailing: AutoSizeText(
                    data[index].payoutStatus ?? '',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                );
              },
            );
          } else {
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Center(
                    child: AutoSizeText(
                      'Belum pernah melakukan penarikan dana',
                    ),
                  ),
                ),
              ],
            );
          }
        },
        error: (error, stackTrace) => Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: AutoSizeText(
              'NETWORK ERROR',
            ),
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
      ),
    );
  }
}
