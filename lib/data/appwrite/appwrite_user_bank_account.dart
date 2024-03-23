import 'package:appwrite/appwrite.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ika_smansara/data/helpers/network_client_helper.dart';
import 'package:ika_smansara/data/repositories/user_bank_account_repository.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_document.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_request.dart';
import 'package:ika_smansara/utils/constants.dart';

class AppwriteUserBankAccount implements UserBankAccountRepository {
  final Client _appwriteClient;

  AppwriteUserBankAccount({Client? appwriteClient})
      : _appwriteClient =
            appwriteClient ?? NetworkClientHelper.instance.appwriteClient;

  late final _databases = Databases(_appwriteClient);

  @override
  Future<Result<UserAccountBankDocument>> createAccountBank({
    required UserAccountBankRequest userAccountBankRequest,
  }) async {
    try {
      var result = await _databases.createDocument(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['ACCOUNT_BANK_DOCUMENT_ID'].toString(),
        documentId: 'unique()',
        data: userAccountBankRequest.toJson(),
        permissions: [
          Permission.read(
            Role.label('admin'),
          ),
          Permission.update(
            Role.label('admin'),
          ),
          Permission.read(
            Role.user(
              userAccountBankRequest.userId!,
            ),
          ),
          Permission.update(
            Role.user(
              userAccountBankRequest.userId!,
            ),
          ),
        ],
      );

      Constants.logger.d(result.data);

      return Result.success(
        UserAccountBankDocument.fromJson(
          result.toMap(),
        ),
      );
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<UserAccountBankDocument>> deleteAccountBank({
    required UserAccountBankRequest userAccountBankRequest,
  }) async {
    try {
      var result = await _databases.updateDocument(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['ACCOUNT_BANK_DOCUMENT_ID'].toString(),
        documentId: userAccountBankRequest.id!,
        data: userAccountBankRequest.toJson(),
      );

      Constants.logger.d(result.data);

      return Result.success(
        UserAccountBankDocument.fromJson(
          result.toMap(),
        ),
      );
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<List<UserAccountBankDocument>>> getAccountBankByUserId({
    required String userId,
  }) async {
    try {
      var result = await _databases.listDocuments(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['ACCOUNT_BANK_DOCUMENT_ID'].toString(),
        queries: [
          Query.equal('isDeleted', false),
          Query.equal('userId', userId),
        ],
      );

      Constants.logger.d(result.documents);

      if (result.documents.isNotEmpty) {
        return Result.success(
          result.documents
              .map(
                (e) => UserAccountBankDocument.fromJson(e.data),
              )
              .toList(),
        );
      } else {
        return Result.success([]);
      }
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<UserAccountBankDocument>> getDetailAccountBank({
    required String accountBankId,
  }) async {
    try {
      var result = await _databases.getDocument(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['ACCOUNT_BANK_DOCUMENT_ID'].toString(),
        documentId: accountBankId,
      );

      Constants.logger.d(result.data);

      return Result.success(
        UserAccountBankDocument.fromJson(
          result.toMap(),
        ),
      );
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<UserAccountBankDocument>> updateAccountBank({
    required UserAccountBankRequest userAccountBankRequest,
  }) async {
    try {
      var result = await _databases.updateDocument(
        databaseId: dotenv.env['DATABASE_ID'].toString(),
        collectionId: dotenv.env['ACCOUNT_BANK_DOCUMENT_ID'].toString(),
        documentId: userAccountBankRequest.id!,
        data: userAccountBankRequest.toJson(),
      );

      Constants.logger.d(result.data);

      return Result.success(
        UserAccountBankDocument.fromJson(
          result.toMap(),
        ),
      );
    } on AppwriteException catch (e) {
      Constants.logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }
}
