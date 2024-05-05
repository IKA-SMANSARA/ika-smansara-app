import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/widgets/parallax_flow_delegate.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ParallaxImageCard extends StatelessWidget {
  final GlobalKey _imageKey = GlobalKey();
  final String image;

  ParallaxImageCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0, 6),
              blurRadius: 8)
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Flow(
          delegate: ParallaxFlowDelegate(
            scrollable: Scrollable.of(context),
            listItemContext: context,
            backgroundImageKey: _imageKey,
          ),
          children: [
            CachedNetworkImage(
              key: _imageKey,
              imageUrl: image,
              placeholder: (context, url) =>
                  LoadingAnimationWidget.horizontalRotatingDots(
                color: Colors.amber,
                size: 35,
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ],
        ),
      ),
    );
  }
}
