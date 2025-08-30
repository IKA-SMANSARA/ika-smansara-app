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

  late final _tablesDB = TablesDB(_appwriteClient);

  @override
  Future<Result<ThreadsDocument>> deleteThread({
    required ThreadsRequest threadsRequest,
  }) async {
    try {
      var result = await _tablesDB.updateRow(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId: dotenv.env['THREADS_DOCUMENT_ID'] ?? 'default-collection',
        rowId: threadsRequest.id ?? ID.unique(),
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
      var result = await _tablesDB.updateRow(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId: dotenv.env['THREADS_DOCUMENT_ID'] ?? 'default-collection',
        rowId: threadsRequest.id ?? ID.unique(),
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
      var result = await _tablesDB.listRows(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId: dotenv.env['THREADS_DOCUMENT_ID'] ?? 'default-collection',
        queries: [
          Query.equal('isDeleted', false),
          Query.equal('isQuestion', true),
          Query.orderDesc('\$updatedAt'),
        ],
      );

      Constants.logger.d(result.rows);

      if (result.rows.isNotEmpty) {
        return Result.success(
          result.rows
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
      var result = await _tablesDB.listRows(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId: dotenv.env['THREADS_DOCUMENT_ID'] ?? 'default-collection',
        queries: [
          Query.equal('isDeleted', false),
          Query.equal('isQuestion', true),
          Query.equal('userId', userId),
          Query.orderDesc('\$updatedAt'),
        ],
      );

      Constants.logger.d(result.rows);

      if (result.rows.isNotEmpty) {
        return Result.success(
          result.rows
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
      var result = await _tablesDB.getRow(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId: dotenv.env['THREADS_DOCUMENT_ID'] ?? 'default-collection',
        rowId: threadId,
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
      var result = await _tablesDB.createRow(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId: dotenv.env['THREADS_DOCUMENT_ID'] ?? 'default-collection',
        rowId: ID.unique(),
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

  @override
  Future<Result<List<ThreadsDocument>>> getListAnswerThread({
    required String threadId,
  }) async {
    try {
      var result = await _tablesDB.listRows(
        databaseId: dotenv.env['DATABASE_ID'] ?? 'default-database',
        tableId: dotenv.env['THREADS_DOCUMENT_ID'] ?? 'default-collection',
        queries: [
          Query.equal('isDeleted', false),
          Query.equal('isAnswer', true),
          Query.orderDesc('\$updatedAt'),
          Query.equal('replyingThreadId', threadId),
        ],
      );

      Constants.logger.d(result.rows);

      if (result.rows.isNotEmpty) {
        return Result.success(
          result.rows
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
}
