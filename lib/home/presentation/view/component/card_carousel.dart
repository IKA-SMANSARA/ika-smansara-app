import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ika_smansara/gen/assets.gen.dart';

class CardCarousel extends StatelessWidget {
  const CardCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
      items: [
        Assets.images.imgPp.image(
          fit: BoxFit.cover,
        ),
        Assets.images.children.image(
          fit: BoxFit.cover,
        ),
        Assets.images.deathCub.image(
          fit: BoxFit.cover,
        ),
        Assets.images.donate.image(
          fit: BoxFit.cover,
        ),
        Assets.images.donation1.image(
          fit: BoxFit.cover,
        ),
        Assets.images.volunteerDancingVillage.image(
          fit: BoxFit.cover,
        ),
      ].map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: image,
              ),
            );
          },
        );
      }).toList(),
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
}
