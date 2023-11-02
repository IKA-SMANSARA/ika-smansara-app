import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/common/presentation/routes/routes.dart';
import 'package:ika_smansara/common/utils/constants.dart';
import 'package:ika_smansara/home/home.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        if (state is Loading) {
          context.read<CategoriesBloc>().add(
                const CategoriesEvent.fetchData(),
              );

          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is Error) {
          return Center(child: Text(state.errorMessage.toString()));
        }

        if (state is Success) {
          return GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.listCategoryItem?.length,
            itemBuilder: (context, index) {
              final category = state.listCategoryItem?[index];
              return CategoryItem(
                onPress: () => context.pushNamed(
                  Routes.listCampaignPerCategory,
                  queryParameters: {
                    Constants.categoryNameKey:
                        category?.nameCategory?.toUpperCase(),
                  },
                ),
                categoryIcon: SvgPicture.network(
                  category?.categoryIcon ?? '',
                  placeholderBuilder: (context) =>
                      const CircularProgressIndicator(),
                ),
                categoryTitle: category?.nameCategory?.toUpperCase(),
              );
            },
          );
        }

        // started bloc
        context.read<CategoriesBloc>().add(const CategoriesEvent.started());

        return const Center(
          child: Text('Network Error!'),
        );
      },
    );
  }
}
