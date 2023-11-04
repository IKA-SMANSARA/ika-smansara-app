import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ika_smansara/home/home.dart' as carousel_image;
import 'package:ika_smansara/home/presentation/bloc/carousel_bloc.dart';

class CardCarousel extends StatelessWidget {
  const CardCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<carousel_image.CarouselBloc,
        carousel_image.CarouselState>(
      builder: (context, state) {
        if (state is LoadingCarousel) {
          context.read<carousel_image.CarouselBloc>().add(
                const CarouselEvent.fetchData(),
              );

          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is ErrorCarousel) {
          return Center(child: Text(state.errorMessage.toString()));
        }

        if (state is SuccessCarousel) {
          return FlutterCarousel.builder(
            itemCount: state.listCarouselItem?.length,
            itemBuilder: (context, itemIndex, pageViewIndex) {
              return Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    state.listCarouselItem?[itemIndex].imageUrl ?? '',
                  ),
                ),
              );
            },
            options: CarouselOptions(
              height: 200.h,
              viewportFraction: 1,
              autoPlay: true,
              slideIndicator: CircularWaveSlideIndicator(
                currentIndicatorColor: const Color(0xFF104993),
                indicatorBackgroundColor: Colors.white,
              ),
            ),
          );
        }

        // started state
        context.read<carousel_image.CarouselBloc>().add(
              const CarouselEvent.started(),
            );

        return const Center(
          child: Text('Network Error!'),
        );
      },
    );
  }
}
