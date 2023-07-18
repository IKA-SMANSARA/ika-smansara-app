import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/presentation/cubit/web_view_visibilities_cubit.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentWebView extends StatelessWidget {
  const PaymentWebView({this.reference, super.key});

  final String? reference;

  @override
  Widget build(BuildContext context) {
    final isLoading =
        context.select((WebViewVisibilitiesCubit cubit) => cubit.state);
    return Stack(
      children: [
        WebViewWidget(
          controller: WebViewController()
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..setBackgroundColor(Colors.white)
            ..setNavigationDelegate(
              NavigationDelegate(
                onNavigationRequest: (NavigationRequest request) {
                  if (request.url.startsWith(
                    'intent://ikasmansara.page.link/return',
                  )) {
                    context.go(Routes.returnRoute);
                    return NavigationDecision.prevent;
                  }
                  return NavigationDecision.navigate;
                },
                onPageFinished: (finished) {
                  context.read<WebViewVisibilitiesCubit>().isFinished();
                },
              ),
            )
            ..loadRequest(
              Uri.parse(
                'https://app-sandbox.duitku.com/redirect_checkout?reference=$reference&lang=id',
              ),
            ),
        ),
        if (isLoading)
          const Center(child: CircularProgressIndicator())
        else
          const Stack(),
      ],
    );
  }
}
