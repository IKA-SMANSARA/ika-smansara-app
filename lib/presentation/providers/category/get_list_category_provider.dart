import 'package:flutter/foundation.dart';
import 'package:ika_smansara/domain/entities/category_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/get_categories/get_categories.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_categories_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_list_category_provider.g.dart';

@Riverpod(keepAlive: true)
class GetListCategory extends _$GetListCategory {
  @override
  FutureOr<List<CategoryDocument>> build() => [];

  Future<void> getListCategory() async {
    state = const AsyncLoading();

    GetCategories getCategories = ref.read(getCategoriesUseCaseProvider);

    var result = await getCategories(null);

    switch (result) {
      case Success(value: final categories):
        state = AsyncData(categories);
      case Failed(:final message):
        state = AsyncError(
          FlutterError(message),
          StackTrace.current,
        );
        state = AsyncData(state.valueOrNull ?? []);
    }
  }
}
