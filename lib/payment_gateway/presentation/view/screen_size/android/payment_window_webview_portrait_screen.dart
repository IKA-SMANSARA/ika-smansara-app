import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/common/presentation/routes/routes.dart';
import 'package:ika_smansara/payment_gateway/presentation/bloc/transaction/transaction_bloc.dart';

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
                return InAppWebView(
                  initialUrlRequest: URLRequest(
                    url: Uri.parse(state.redirectUrl ?? ''),
                  ),
                  initialOptions: InAppWebViewGroupOptions(
                    crossPlatform: InAppWebViewOptions(
                      useShouldOverrideUrlLoading: true,
                      mediaPlaybackRequiresUserGesture: false,
                    ),
                    android: AndroidInAppWebViewOptions(
                      useHybridComposition: true,
                    ),
                    ios: IOSInAppWebViewOptions(
                      allowsInlineMediaPlayback: true,
                    ),
                  ),
                  shouldOverrideUrlLoading:
                      (controller, navigationAction) async {
                    if (navigationAction.request.url?.host == 'example.com') {
                      context.go(Routes.paymentGateway);
                      return NavigationActionPolicy.CANCEL;
                    }
                    return NavigationActionPolicy.ALLOW;
                  },
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
