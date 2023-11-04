import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/home/home.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoriesUseCase {
  GetCategoriesUseCase(this._homeRepository);

  final HomeRepository _homeRepository;

  Future<Either<ErrorResponse, CategoriesDocumentResponse>> call() =>
      _homeRepository.getCategories();
}
