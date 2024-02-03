import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ika_smansara/domain/entities/category_document.dart';

Widget categoryList({
  void Function(CategoryDocument category)? onTap,
  required AsyncValue<List<CategoryDocument>> categories,
}) =>
    categories.when(
      data: (data) => GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
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
                          child: Text(
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
