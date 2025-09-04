import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ika_smansara/domain/entities/category_document.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

Widget categoryList({
  required BuildContext context,
  void Function(CategoryDocument category)? onTap,
  required AsyncValue<List<CategoryDocument>> categories,
}) =>
    categories.when(
      data: (data) => GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: responsiveGridMenuCrossAxisCount(context),
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.8,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: data.length,
        itemBuilder: (context, index) {
           return GestureDetector(
             onTap: () => onTap?.call(data[index]),
             child: ClipRect(
               child: Container(
                 padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Expanded(
                       flex: 2,
                       child: Container(
                         constraints: const BoxConstraints(maxHeight: 55, maxWidth: 55),
                         child: SvgPicture.network(
                           data[index].categoryIcon ?? '',
                           placeholderBuilder: (context) => Center(
                             child: LoadingAnimationWidget.inkDrop(
                               color: Colors.amber,
                               size: 30,
                             ),
                           ),
                           fit: BoxFit.contain,
                         ),
                       ),
                     ),
                     const SizedBox(height: 6),
                     Expanded(
                       flex: 1,
                       child: AutoSizeText(
                         data[index].nameCategory?.toUpperCase() ?? '',
                         style: const TextStyle(
                           fontSize: 14,
                           fontWeight: FontWeight.w600,
                         ),
                         maxLines: 2,
                         overflow: TextOverflow.ellipsis,
                         textAlign: TextAlign.center,
                         minFontSize: 10,
                       ),
                     ),
                   ],
                 ),
               ),
             ),
           );
        },
      ),
      error: (error, stackTrace) => const Center(
        child: Text('NETWORK ERROR!'),
      ),
      loading: () => Center(
        child: LoadingAnimationWidget.inkDrop(
          color: Colors.amber,
          size: 35,
        ),
      ),
    );
