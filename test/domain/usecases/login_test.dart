import 'package:flutter_test/flutter_test.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/session.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/domain/usecases/login/login.dart';
import 'package:ika_smansara/domain/usecases/login/login_params.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.dart';

void main() {
  late Login usecase;
  late MockAuthentication mockAuthentication;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockAuthentication = MockAuthentication();
    mockUserRepository = MockUserRepository();
    usecase = Login(
      authentication: mockAuthentication,
      userRepository: mockUserRepository,
    );
  });

  final tSession = Session(
    sessionId: 'session-123',
    userId: 'user-123',
  );

  final tUserProfile = UserProfileDocument(
    id: 'user-123',
    name: 'John Doe',
    email: 'john@example.com',
    isAdmin: false,
  );

  final tParams = LoginParams(
    email: 'john@example.com',
    password: 'password123',
  );

  group('Login', () {
    test('should return UserProfileDocument when login and getUser succeed', () async {
      // Arrange
      when(mockAuthentication.login(
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenAnswer((_) async => Result.success(tSession));

      when(mockUserRepository.getUser(uid: anyNamed('uid')))
          .thenAnswer((_) async => Result.success(tUserProfile));

      // Act
      final result = await usecase.call(tParams);

      // Assert
      expect(result.isSuccess, true);
      expect(result.resultValue, tUserProfile);
    });

    test('should return Failed when authentication fails', () async {
      // Arrange
      const errorMessage = 'Invalid credentials';
      when(mockAuthentication.login(
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenAnswer((_) async => Result.failed(errorMessage));

      // Act
      final result = await usecase.call(tParams);

      // Assert
      expect(result.isFailed, true);
      expect(result.errorMessage, errorMessage);
      verifyNever(mockUserRepository.getUser(uid: anyNamed('uid')));
    });

    test('should return Failed when getUser fails', () async {
      // Arrange
      when(mockAuthentication.login(
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenAnswer((_) async => Result.success(tSession));

      const errorMessage = 'User not found';
      when(mockUserRepository.getUser(uid: anyNamed('uid')))
          .thenAnswer((_) async => Result.failed(errorMessage));

      // Act
      final result = await usecase.call(tParams);

      // Assert
      expect(result.isFailed, true);
      expect(result.errorMessage, errorMessage);
    });

    test('should handle empty userId from session', () async {
      // Arrange
      final sessionWithEmptyUserId = Session(
        sessionId: 'session-123',
        userId: '', // Empty userId
      );

      when(mockAuthentication.login(
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenAnswer((_) async => Result.success(sessionWithEmptyUserId));

      when(mockUserRepository.getUser(uid: anyNamed('uid')))
          .thenAnswer((_) async => Result.success(tUserProfile));

      // Act
      final result = await usecase.call(tParams);

      // Assert
      expect(result.isSuccess, true);
      expect(result.resultValue, tUserProfile);
      verify(mockUserRepository.getUser(uid: '')).called(1);
    });

    test('should handle authentication exception', () async {
      // Arrange
      when(mockAuthentication.login(
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenThrow(Exception('Network error'));

      // Act
      final result = await usecase.call(tParams);

      // Assert
      expect(result.isFailed, true);
      expect(result.errorMessage, 'Exception: Network error');
    });

    test('should handle getUser exception', () async {
      // Arrange
      when(mockAuthentication.login(
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenAnswer((_) async => Result.success(tSession));

      when(mockUserRepository.getUser(uid: anyNamed('uid')))
          .thenThrow(Exception('Database error'));

      // Act
      final result = await usecase.call(tParams);

      // Assert
      expect(result.isFailed, true);
      expect(result.errorMessage, 'Exception: Database error');
    });
  });
}