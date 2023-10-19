// ignore_for_file: one_member_abstracts

import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/register/register.dart';

abstract class RegisterRepository {
  Future<Either<ErrorResponse, DocumentResponse>> saveUserProfileDoc(
    UserRegisterDocRequest userRegisterDocRequest,
  );
}
