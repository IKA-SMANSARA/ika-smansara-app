import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/register/domain/model/register_status.dart';
import 'package:ika_smansara/register/register.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveUserProfileDocUseCase {
  SaveUserProfileDocUseCase(this._registerRepository);

  final RegisterRepository _registerRepository;

  Future<RegisterStatus> call({
    String name = '',
    String email = '',
    String password = '',
    String address = '',
    String graduateYear = '',
    String phone = '',
    bool isAlumnus = false,
  }) async {
    final emailRegisterRequest = EmailRegisterRequest(
      userId: Constants.uniqueId,
      name: name,
      email: email,
      password: password,
    );
    final userRegisterUseCase = getIt<UserRegisterUseCase>();
    final userLoginUseCase = getIt<UserLoginUseCase>();

    return userRegisterUseCase(emailRegisterRequest).then(
      (responseSuccess) {
        return responseSuccess.fold(
          (error) {
            return RegisterStatus(
              registerMessage: error.message,
            );
          },
          (success) {
            final userId = success.id;
            final userProfileDocRequest = UserProfileDocRequest(
              address: address,
              email: email,
              graduateYear: graduateYear,
              isAlumni: isAlumnus,
              name: name,
              phone: phone,
              createAt: DateTime.now().toString(),
              updateAt: DateTime.now().toString(),
              authKey: userId,
            );
            final userRegisterDocRequest = UserRegisterDocRequest(
              documentId: userId,
              data: userProfileDocRequest,
              permissions: [
                'read("user:$userId")',
                'update("user:$userId")',
              ],
            );

            return userLoginUseCase(email, password).then(
              (status) {
                final loginStatus = status.authStatus ?? false;

                if (loginStatus) {
                  return _registerRepository
                      .saveUserProfileDoc(userRegisterDocRequest)
                      .then(
                    (value) {
                      return value.fold(
                        (valueError) {
                          return RegisterStatus(
                            registerMessage: valueError.message,
                          );
                        },
                        (valueSuccess) {
                          return RegisterStatus(registerStatus: true);
                        },
                      );
                    },
                  );
                } else {
                  return RegisterStatus(
                    registerMessage: status.authMessage,
                  );
                }
              },
            );
          },
        );
      },
    );
  }
}
