import 'package:ika_smansara/data/repositories/category_repository.dart';
import 'package:ika_smansara/domain/entities/category_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class GetCategories implements UseCase<Result<List<CategoryDocument>>, void> {
  final CategoryRepository _categoryRepository;

  GetCategories({required CategoryRepository categoryRepository})
      : _categoryRepository = categoryRepository;

  @override
  Future<Result<List<CategoryDocument>>> call(void _) async {
    var result = await _categoryRepository.getCategories();

    Constants.logger.d(result.resultValue);

    if (result is Success) {
      return switch (result) {
        Success(value: final data) => Result.success(data),
        Failed(:final message) => Result.failed(message),
      };
    } else {
      return Result.failed(result.errorMessage ?? 'Error!');
    }
  }
}
