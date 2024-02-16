import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/transaction_request.dart';
import 'package:ika_smansara/presentation/providers/transaction/get_url_webview_provider.dart';
import 'package:ika_smansara/presentation/providers/transaction/save_payment_transaction_provider.dart';
import 'package:ika_smansara/utils/constants.dart';

class WebviewSnapPage extends ConsumerWidget {
  final TransactionRequest transactionRequest;
  const WebviewSnapPage(this.transactionRequest, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var asyncWebViewUrl = ref.watch(
      getUrlWebviewProvider(
        transactionRequest: transactionRequest,
      ),
    );

    return Scaffold(
      body: asyncWebViewUrl.whenOrNull(
        data: (data) => InAppWebView(
          initialUrlRequest: URLRequest(
            url: WebUri(data?.redirectUrl ?? ''),
          ),
          initialSettings: InAppWebViewSettings(
            useShouldOverrideUrlLoading: true,
            mediaPlaybackRequiresUserGesture: true,
            useHybridComposition: true,
            allowsInlineMediaPlayback: true,
          ),
          shouldOverrideUrlLoading: (controller, navigationAction) async {
            Constants.logger.w(navigationAction.request.url);
            if (navigationAction.request.url?.host == 'example.com') {
              final statusPayment = navigationAction
                  .request.url?.queryParametersAll.values.last.first;

              Constants.logger.d(statusPayment);

              ref
                  .read(savePaymentTransactionProvider.notifier)
                  .postPaymentTransaction(
                    statusPayment: statusPayment ?? '',
                    transactionRequest: transactionRequest,
                  );

              return NavigationActionPolicy.CANCEL;
            }
            return NavigationActionPolicy.ALLOW;
          },
        ),
        error: (error, stackTrace) => const Center(
          child: Text(
            'NETWORK ERROR!',
          ),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}
