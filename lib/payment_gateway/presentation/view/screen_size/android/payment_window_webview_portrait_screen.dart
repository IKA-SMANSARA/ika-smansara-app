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
      resizeToAvoidBottomInset: true,
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
                        '100000',
                        paymentMethod,
                        'donasi 100K',
                        'mas tes',
                        'masrobot6969@gmail.com',
                        '085155121640',
                        'donasi anak yatim',
                        100000,
                        1,
                        'mas',
                        'tes',
                        'masrobot6969@gmail.com',
                        '085155121640',
                        'mas',
                        'tes',
                        'jalan jalan',
                        'mojokerto',
                        '59428',
                        '085155121640',
                        'mas',
                        'tes',
                        'jalan jalan',
                        'mojokerto',
                        '59428',
                        '085155121640',
                      ),
                    );
                return const CircularProgressIndicator();
              }
              if (state is Success) {
                return WebViewWidget(
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
                      ),
                    )
                    ..loadRequest(
                      Uri.parse(
                        'https://app-sandbox.duitku.com/redirect_checkout?reference=${state.reference}&lang=id',
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
