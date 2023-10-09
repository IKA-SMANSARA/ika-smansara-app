import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/common/presentation/routes/routes.dart';
import 'package:ika_smansara/payment_gateway/presentation/bloc/transaction/transaction_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentWindowWebViewPortraitScreen extends StatelessWidget {
  const PaymentWindowWebViewPortraitScreen({
    required this.paymentMethod,
    super.key,
  });

  final String? paymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: BlocProvider(
          create: (_) => TransactionBloc(),
          child: BlocBuilder<TransactionBloc, TransactionState>(
            builder: (context, state) {
              if (state is Initial) {
                context
                    .read<TransactionBloc>()
                    .add(const TransactionEvent.started());
                return const CircularProgressIndicator();
              }
              if (state is Loading) {
                context.read<TransactionBloc>().add(
                      TransactionEvent.fetchData(
                        '10000',
                        'ORDER-${DateTime.now().millisecondsSinceEpoch}',
                      ),
                    );
                return const CircularProgressIndicator();
              }

              if (state is Success) {
                return WebViewWidget(
                  controller: WebViewController()
                    ..setJavaScriptMode(JavaScriptMode.unrestricted)
                    ..setBackgroundColor(Colors.white12)
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
                      ),
                    )
                    ..loadRequest(
                      Uri.parse(
                        state.redirectUrl ?? '',
                      ),
                    ),
                );
              }

              if (state is Error) {
                return Text(state.errorMessage ?? '');
              }
              return Text('Error no load payment $paymentMethod');
            },
          ),
        ),
      ),
    );
  }
}
