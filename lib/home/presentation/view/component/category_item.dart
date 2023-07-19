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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 85.w,
            height: 70.w,
            child: categoryIcon,
          ),
          SizedBox(
            width: 85.w,
            height: 12.w,
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
