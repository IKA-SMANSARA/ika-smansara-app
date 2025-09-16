import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class CampaignDescriptionSection extends StatelessWidget {
  final String description;

  const CampaignDescriptionSection({required this.description, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Tentang Penggalangan Dana',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),

        const SizedBox(height: 12),

        ExpandableText(
          description,
          textAlign: TextAlign.justify,
          expandText: 'Baca selengkapnya',
          collapseOnTextTap: true,
          expandOnTextTap: true,
          linkColor: const Color(0xFF104993),
          animation: true,
          maxLines: 4,
          style: const TextStyle(
            fontSize: 14,
            height: 1.6,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}