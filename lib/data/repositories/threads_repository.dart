import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/threads_document.dart';
import 'package:ika_smansara/domain/entities/threads_request.dart';

abstract interface class ThreadsRepository {
  Future<Result<List<ThreadsDocument>>> getListThreadsByUserId({
    required String userId,
  });

  Future<Result<List<ThreadsDocument>>> getListThreads();

  Future<Result<ThreadsDocument>> getThread({
    required String threadId,
  });

  Future<Result<ThreadsDocument>> editThread({
    required ThreadsRequest threadsRequest,
  });

  Future<Result<ThreadsDocument>> postThread({
    required ThreadsRequest threadsRequest,
  });

  Future<Result<ThreadsDocument>> deleteThread({
    required ThreadsRequest threadsRequest,
  });
}
