import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ika_smansara/domain/entities/category_document.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

Widget categoryList({
  required BuildContext context,
  void Function(CategoryDocument category)? onTap,
  required AsyncValue<List<CategoryDocument>> categories,
}) =>
    categories.when(
      data: (data) => GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: categoryMenuCrossAxisCount(context),
          mainAxisSpacing: 10,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => onTap?.call(data[index]),
            child: Column(
              children: [
                SvgPicture.network(
                  data[index].categoryIcon ?? '',
                  placeholderBuilder: (context) => const Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                ),
                Expanded(
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Center(
                          child: AutoSizeText(
                            data[index].nameCategory?.toUpperCase() ?? '',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      error: (error, stackTrace) => const Center(
        child: Text('NETWORK ERROR!'),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
