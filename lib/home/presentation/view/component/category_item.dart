import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    required this.categoryIcon,
    required this.categoryTitle,
    required this.onPress,
    super.key,
  });

  final String? categoryTitle;
  final Widget? categoryIcon;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        children: [
          Expanded(
            child: categoryIcon ?? const Placeholder(),
          ),
          SizedBox(
            height: 8.h,
          ),
          Expanded(
            child: Wrap(
              children: [
                Center(
                  child: Text(
                    categoryTitle ?? '',
                    style: TextStyle(fontSize: 10.sp),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
