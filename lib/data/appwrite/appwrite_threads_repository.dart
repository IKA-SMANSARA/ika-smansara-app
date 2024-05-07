import 'package:appwrite/appwrite.dart';
import 'package:ika_smansara/data/helpers/network_client_helper.dart';
import 'package:ika_smansara/data/repositories/threads_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/threads_document.dart';
import 'package:ika_smansara/domain/entities/threads_request.dart';

class AppwriteThreadsRepository implements ThreadsRepository {
  final Client _appwriteClient;

  AppwriteThreadsRepository({Client? appwriteClient})
      : _appwriteClient =
            appwriteClient ?? NetworkClientHelper.instance.appwriteClient;

  late final _databases = Databases(_appwriteClient);

  @override
  Future<Result<ThreadsDocument>> deleteThread({
    required ThreadsRequest threadsRequest,
  }) async {
    // TODO: implement deleteThread
    throw UnimplementedError();
  }

  @override
  Future<Result<ThreadsDocument>> editThread({
    required ThreadsRequest threadsRequest,
  }) async {
    // TODO: implement editThread
    throw UnimplementedError();
  }

  @override
  Future<Result<List<ThreadsDocument>>> getListThreads() async {
    // TODO: implement getListThreads
    throw UnimplementedError();
  }

  @override
  Future<Result<List<ThreadsDocument>>> getListThreadsByUserId({
    required String userId,
  }) async {
    // TODO: implement getListThreadsByUserId
    throw UnimplementedError();
  }

  @override
  Future<Result<ThreadsDocument>> getThread({
    required String threadId,
  }) async {
    // TODO: implement getThread
    throw UnimplementedError();
  }

  @override
  Future<Result<ThreadsDocument>> postThread({
    required ThreadsRequest threadsRequest,
  }) async {
    // TODO: implement postThread
    throw UnimplementedError();
  }
}
