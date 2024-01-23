import 'package:appwrite/appwrite.dart';
import 'package:ika_smansara/common/utils/constants.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppwriteModule {
  @lazySingleton
  Client appwriteClient() => Client()
      .setEndpoint(Constants.baseURL)
      .setProject(Constants.ikaSmansaraProjectId);
}
