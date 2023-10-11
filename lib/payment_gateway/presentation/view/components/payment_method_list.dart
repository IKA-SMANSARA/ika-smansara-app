import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ika_smansara/common/presentation/routes/routes.dart';
import 'package:ika_smansara/common/utils/constants.dart';
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
                    amount: 0,
                  ),
                );
            return const Center(child: CircularProgressIndicator());
          }

          if (state is Success) {
            return GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                mainAxisSpacing: 16,
                childAspectRatio: 0.7,
              ),
              padding: EdgeInsets.all(16.h),
              itemCount: state.paymentFee?.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Expanded(
                    child: Wrap(
                      runAlignment: WrapAlignment.center,
                      alignment: WrapAlignment.center,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.r),
                          ),
                          color: Colors.white,
                          elevation: 4.r,
                          child: Padding(
                            padding: EdgeInsets.all(2.w),
                            child: CachedNetworkImage(
                              height: 50.h,
                              width: 50.h,
                              imageUrl: state
                                      .paymentFee?[index]?.paymentImage ??
                                  'https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png',
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              errorWidget: (context, url, error) => const Icon(
                                Icons.warning,
                                color: Colors.amber,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4.h),
                          child: Center(
                            child: Text(
                              state.paymentFee?[index]?.paymentName ?? '',
                              style: GoogleFonts.inter(fontSize: 10.sp),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => context.pushNamed(
                    Routes.paymentGateway,
                    queryParameters: {
                      Constants.paymentMethodKey:
                          state.paymentFee?[index]?.paymentMethod,
                    },
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
