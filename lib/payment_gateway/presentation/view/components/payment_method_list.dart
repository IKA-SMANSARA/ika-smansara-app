import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/payment_gateway/presentation/bloc/get_payment_method_bloc/get_payment_method_bloc.dart';

class PaymentMethodList extends StatelessWidget {
  const PaymentMethodList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetPaymentMethodBloc(),
      child: BlocBuilder<GetPaymentMethodBloc, GetPaymentMethodState>(
        builder: (context, state) {
          if (state is Initial) {
            context
                .read<GetPaymentMethodBloc>()
                .add(const GetPaymentMethodEvent.started());
            return const Center(child: CircularProgressIndicator());
          }

          if (state is Loading) {
            context.read<GetPaymentMethodBloc>().add(
                  const GetPaymentMethodEvent.fetchData(
                    amount: 10000,
                  ),
                );
            return const Center(child: CircularProgressIndicator());
          }

          if (state is Success) {
            return ListView.builder(
              padding: EdgeInsets.all(16.h),
              itemCount: state.paymentFee?.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 16.h),
                  child: GestureDetector(
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 8.h,
                          ),
                          CachedNetworkImage(
                            imageUrl: state.paymentFee?[index]?.paymentImage ??
                                'https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png',
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) => const Icon(
                              Icons.warning,
                              color: Colors.amber,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(state.paymentFee?[index]?.paymentName ?? ''),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Payment Fee : IDR ${state.paymentFee?[index]?.totalFee}',
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                        ],
                      ),
                    ),
                    onTap: () => context.pushNamed(
                      'payment-gateway',
                      queryParameters: {
                        'payment method':
                            state.paymentFee?[index]?.paymentMethod,
                      },
                    ),
                  ),
                );
              },
            );
          }

          if (state is Error) {
            return Center(child: Text(state.errorMessage ?? ''));
          }

          return const Center(child: Text('no payment method found'));
        },
      ),
    );
  }
}
