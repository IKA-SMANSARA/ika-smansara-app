import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/category_document.dart';

class ListCampaignPage extends ConsumerWidget {
  final CategoryDocument? category;

  const ListCampaignPage(this.category, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Center(
        child: Text(
          category?.nameCategory ?? 'not found',
        ),
      ),
    );
  }
}
