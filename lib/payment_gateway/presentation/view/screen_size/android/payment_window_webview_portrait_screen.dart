import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';
import 'package:ika_smansara/payment_gateway/presentation/bloc/transaction/transaction_bloc.dart';
import 'package:ika_smansara/payment_gateway/presentation/cubit/web_view_visibilities_cubit.dart';

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
                return BlocProvider(
                  create: (context) => WebViewVisibilitiesCubit(),
                  child: PaymentWebView(reference: state.reference),
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
