part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = Initial;
  const factory CategoriesState.success({
    @Default([]) List<CategoryItemResponse>? listCategoryItem,
  }) = Success;
  const factory CategoriesState.error(String? errorMessage) = Error;
  const factory CategoriesState.loading() = Loading;
}
