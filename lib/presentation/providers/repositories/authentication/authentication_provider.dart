import 'package:ika_smansara/data/appwrite/appwrite_authentication.dart';
import 'package:ika_smansara/data/repositories/authentication.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_provider.g.dart';

@riverpod
Authentication authentication(AuthenticationRef ref) =>
    AppwriteAuthentication();
