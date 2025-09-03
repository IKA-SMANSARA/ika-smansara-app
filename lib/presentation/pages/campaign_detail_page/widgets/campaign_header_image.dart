import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/widgets/header_image.dart';

class CampaignHeaderImage extends StatelessWidget {
  final String? imageUrl;

  const CampaignHeaderImage({required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return headerImage(
      imageUrl: imageUrl ?? 'https://picsum.photos/250?image=9',
    );
  }
}