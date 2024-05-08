import 'package:appwrite/appwrite.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ika_smansara/data/helpers/network_client_helper.dart';
import 'package:ika_smansara/data/repositories/threads_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/threads_document.dart';
import 'package:ika_smansara/domain/entities/threads_request.dart';
import 'package:ika_smansara/utils/constants.dart';

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
    try {
      var result = await _databases.updateDocument(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['THREADS_DOCUMENT_ID'].toString(),
        documentId: threadsRequest.id ?? '',
        data: threadsRequest.toJson(),
      );

      Constants.logger.d(result.data);

      return Result.success(
        ThreadsDocument.fromJson(
          result.toMap(),
        ),
      );
    } on AppwriteException catch (e) {
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<ThreadsDocument>> editThread({
    required ThreadsRequest threadsRequest,
  }) async {
    try {
      var result = await _databases.updateDocument(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['THREADS_DOCUMENT_ID'].toString(),
        documentId: threadsRequest.id ?? '',
        data: threadsRequest.toJson(),
      );

      Constants.logger.d(result.data);

      return Result.success(
        ThreadsDocument.fromJson(
          result.toMap(),
        ),
      );
    } on AppwriteException catch (e) {
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<List<ThreadsDocument>>> getListThreads() async {
    try {
      var result = await _databases.listDocuments(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['THREADS_DOCUMENT_ID'].toString(),
        queries: [
          Query.equal('isDeleted', false),
        ],
      );

      Constants.logger.d(result.documents);

      if (result.documents.isNotEmpty) {
        return Result.success(
          result.documents
              .map(
                (e) => ThreadsDocument.fromJson(e.data),
              )
              .toList(),
        );
      } else {
        return Result.success([]);
      }
    } on AppwriteException catch (e) {
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<List<ThreadsDocument>>> getListThreadsByUserId({
    required String userId,
  }) async {
    try {
      var result = await _databases.listDocuments(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['THREADS_DOCUMENT_ID'].toString(),
        queries: [
          Query.equal('isDeleted', false),
          Query.equal('createdBy', '$userId')
        ],
      );

      Constants.logger.d(result.documents);

      if (result.documents.isNotEmpty) {
        return Result.success(
          result.documents
              .map(
                (e) => ThreadsDocument.fromJson(e.data),
              )
              .toList(),
        );
      } else {
        return Result.success([]);
      }
    } on AppwriteException catch (e) {
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<ThreadsDocument>> getThread({
    required String threadId,
  }) async {
    try {
      var result = await _databases.getDocument(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['THREADS_DOCUMENT_ID'].toString(),
        documentId: threadId,
      );

      Constants.logger.d(result.data);

      return Result.success(
        ThreadsDocument.fromJson(
          result.data,
        ),
      );
    } on AppwriteException catch (e) {
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<ThreadsDocument>> postThread({
    required ThreadsRequest threadsRequest,
  }) async {
    try {
      var result = await _databases.createDocument(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['THREADS_DOCUMENT_ID'].toString(),
        documentId: ID.unique(),
        data: threadsRequest.toJson(),
        permissions: [
          Permission.write(Role.any()),
          Permission.read(Role.any()),
          Permission.update(Role.any()),
        ],
      );

      Constants.logger.d(result.data);

      return Result.success(
        ThreadsDocument.fromJson(
          result.toMap(),
        ),
      );
    } on AppwriteException catch (e) {
      return Result.failed(e.message ?? 'Error!');
    }
  }
}
