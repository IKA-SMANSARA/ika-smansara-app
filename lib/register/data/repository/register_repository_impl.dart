import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/common/data/mapper/document_mapper.dart';
import 'package:ika_smansara/register/data/mapper/register_mapper.dart';
import 'package:ika_smansara/register/register.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: RegisterRepository)
class RegisterRepositoryImpl implements RegisterRepository {
  RegisterRepositoryImpl(this._apiServices);

  final ApiServices _apiServices;

  @override
  Future<Either<ErrorResponse, DocumentResponse>> saveUserProfileDoc(
    UserRegisterDocRequest userRegisterDocRequest,
  ) async {
    // ignore: inference_failure_on_function_invocation
    final lazyBox = await Hive.openLazyBox('user-cookie');
    final cookie = await lazyBox.get('cookie');

    final responseSaveUserProfileDoc = await _apiServices.saveUserProfileDoc(
      Constants.ikaSmansaraDatabaseId,
      Constants.ikaSmansaraUserProfileCollectionId,
      cookie.toString(),
      userRegisterDocRequest.toUserRegisterDocRequestDTO(),
    );

    if (responseSaveUserProfileDoc.isSuccessful) {
      return Right(
        DocumentResponseDTO.fromJson(
          responseSaveUserProfileDoc.body as Map<String, dynamic>,
        ).toDocumentResponse(),
      );
    } else {
      return Left(
        ErrorResponseDTO.fromJson(
          responseSaveUserProfileDoc.error! as Map<String, dynamic>,
        ).toErrorResponse(),
      );
    }
  }
}
