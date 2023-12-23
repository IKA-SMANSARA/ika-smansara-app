import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/common/presentation/routes/routes.dart';
import 'package:ika_smansara/common/utils/constants.dart';
import 'package:ika_smansara/common/utils/extension.dart';
import 'package:ika_smansara/payment_gateway/presentation/bloc/transaction/transaction_bloc.dart';

class PaymentWindowWebViewPortraitScreen extends StatelessWidget {
  const PaymentWindowWebViewPortraitScreen({
    required this.campaignId,
    required this.amountValue,
    required this.campaignName,
    required this.campaignImage,
    super.key,
  });

  final String? amountValue;
  final String? campaignId;
  final String? campaignName;
  final String? campaignImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: BlocProvider(
          create: (_) => TransactionBloc(),
          child: BlocBuilder<TransactionBloc, TransactionState>(
            builder: (context, state) {
              final donationRandomID = getRandomOrderIdNumber();

              if (state is Initial) {
                context
                    .read<TransactionBloc>()
                    .add(const TransactionEvent.started());
                return const CircularProgressIndicator();
              }
              if (state is Loading) {
                context.read<TransactionBloc>().add(
                      TransactionEvent.fetchData(
                        amountValue,
                        'ID-$donationRandomID',
                        campaignId,
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
                    Constants.logger.w(navigationAction.request.url);
                    if (navigationAction.request.url?.host == 'example.com') {
                      final statusPayment = navigationAction
                          .request.url?.queryParametersAll.values.last.first;

                      // save transaction data
                      context.read<TransactionBloc>().add(
                            TransactionEvent.saveTransactionData(
                              amountValue,
                              'ID-$donationRandomID',
                              campaignId,
                              statusPayment,
                              campaignName,
                              campaignImage,
                            ),
                          );

                      Future.delayed(
                        const Duration(milliseconds: 1000),
                        () {
                          context.goNamed(
                            Routes.detailMyDonation,
                            queryParameters: {
                              Constants.myDonationIdKey: 'ID-$donationRandomID',
                            },
                          );

                          return NavigationActionPolicy.CANCEL;
                        },
                      );
                    }
                    return NavigationActionPolicy.ALLOW;
                  },
                );
              }

              if (state is Error) {
                return Text(state.errorMessage ?? '');
              }
              return Text('Error no load payment $amountValue');
            },
          ),
        ),
      ),
    );
  }
}
