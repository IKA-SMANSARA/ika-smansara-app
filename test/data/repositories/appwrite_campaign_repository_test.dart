import 'dart:io' as io;

import 'package:appwrite/appwrite.dart' as appwrite;
import 'package:appwrite/models.dart' as models;
import 'package:appwrite/src/input_file.dart';
import 'package:appwrite/src/enums.dart';
import 'package:appwrite/src/upload_progress.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ika_smansara/data/appwrite/appwrite_campaign_repository.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/campaign_request.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.dart';





class MockTablesDB extends Mock implements appwrite.TablesDB {
  Set<String> _nonExistentDocuments = {};

  void setNonExistentDocument(String documentId) {
    _nonExistentDocuments.add(documentId);
  }

  @override
  Future<models.Row> createRow({
    required String databaseId,
    required String tableId,
    required String rowId,
    required Map<dynamic, dynamic> data,
    List<String>? permissions,
  }) async {
    return MockRowResponse();
  }

  @override
  Future<models.Row> getRow({
    required String databaseId,
    required String tableId,
    required String rowId,
    List<String>? queries,
  }) async {
    if (_nonExistentDocuments.contains(rowId)) {
      throw appwrite.AppwriteException('Document not found', 404);
    }
    return MockRowResponse();
  }
}
class MockStorage extends Mock implements appwrite.Storage {
  bool _shouldFail = false;
  bool _shouldReturnEmptyId = false;

  void setShouldFail(bool fail) {
    _shouldFail = fail;
  }

  void setShouldReturnEmptyId(bool emptyId) {
    _shouldReturnEmptyId = emptyId;
  }

  @override
  Future<models.File> createFile({
    required String bucketId,
    required String fileId,
    required appwrite.InputFile file,
    List<String>? permissions,
    Function(UploadProgress)? onProgress,
  }) async {
    if (_shouldFail) {
      throw appwrite.AppwriteException('Upload failed', 500);
    }
    return _shouldReturnEmptyId ? MockFileResponse.emptyId() : MockFileResponse();
  }
}

void main() {
  late AppwriteCampaignRepository repository;
  late MockTablesDB mockTablesDB;
  late MockStorage mockStorage;

  setUp(() {
    mockTablesDB = MockTablesDB();
    mockStorage = MockStorage();

    repository = AppwriteCampaignRepository.forTesting(
      tablesDB: mockTablesDB,
      storage: mockStorage,
    );
  });

  setUpAll(() {
    // Initialize Flutter binding for testing
    TestWidgetsFlutterBinding.ensureInitialized();

    // Mock dotenv for testing
    dotenv.testLoad(fileInput: '''
      BUCKET_IMAGE_CAMPAIGN=test-bucket
      DATABASE_ID=test-database
      CAMPAIGN_DOCUMENT_ID=test-collection
      PROJECT_ID=test-project
    ''');

    // Mock path provider to avoid MissingPluginException
    const MethodChannel('plugins.flutter.io/path_provider')
        .setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'getApplicationDocumentsDirectory') {
        return '/tmp/test';
      }
      return null;
    });

    // Create the test directory for cookies
    final testDir = io.Directory('/tmp/test/cookies');
    if (!testDir.existsSync()) {
      testDir.createSync(recursive: true);
    }
  });

  final tCampaignRequest = CampaignRequest(
    campaignName: 'Test Campaign',
    goalAmount: 1000000,
    campaignDescription: 'Test Description',
  );

  final tImageFile = io.File('test_image.jpg');

  group('AppwriteCampaignRepository', () {
    group('createCampaign', () {
      test('should return CampaignDocument when creation succeeds', () async {
        // Arrange

        // Act
        final result = await repository.createCampaign(
          campaignRequest: tCampaignRequest,
          imageFile: tImageFile,
        );

        // Assert
        expect(result.isSuccess, true);
        expect(result.resultValue, isA<CampaignDocument>());
      });

      test('should return Failed when file upload fails', () async {
        // Arrange
        mockStorage.setShouldReturnEmptyId(true);

        // Act
        final result = await repository.createCampaign(
          campaignRequest: tCampaignRequest,
          imageFile: tImageFile,
        );

        // Assert
        expect(result.isFailed, true);
        expect(result.errorMessage, 'Error! failed get image url!');
      });

      test('should return Failed when AppwriteException occurs', () async {
        // Arrange
        mockStorage.setShouldFail(true);

        // Act
        final result = await repository.createCampaign(
          campaignRequest: tCampaignRequest,
          imageFile: tImageFile,
        );

        // Assert
        expect(result.isFailed, true);
        expect(result.errorMessage, 'Upload failed');
      });

      test('should handle null image file', () async {
        // Arrange
        // Act
        final result = await repository.createCampaign(
          campaignRequest: tCampaignRequest,
          imageFile: null,
        );

        // Assert
        expect(result.isSuccess, true);
        expect(result.resultValue, isA<CampaignDocument>());
      });
    });

    group('getCampaignDetail', () {
      test('should return CampaignDocument when retrieval succeeds', () async {
        // Arrange
        // Act
        final result = await repository.getCampaignDetail(campaignId: 'doc-123');

        // Assert
        expect(result.isSuccess, true);
        expect(result.resultValue, isA<CampaignDocument>());
      });

      test('should return Failed when AppwriteException occurs', () async {
        // Arrange
        mockTablesDB.setNonExistentDocument('non-existent-doc');

        // Act
        final result = await repository.getCampaignDetail(campaignId: 'non-existent-doc');

        // Assert
        expect(result.isFailed, true);
        expect(result.errorMessage, 'Document not found');
      });
    });
  });
}

// Mock classes for Appwrite responses
class MockFileResponse extends Mock implements models.File {
  final String _id;

  MockFileResponse() : _id = 'file-123';
  MockFileResponse.emptyId() : _id = '';

  @override
  String get $id => _id;

  @override
  String get bucketId => 'test-bucket';
}

class MockRowResponse extends Mock implements models.Row {
  @override
  Map<String, dynamic> toMap() => {
    '\$id': 'doc-123',
    'campaignName': 'Test Campaign',
    'goalAmount': 1000000,
  };

  @override
  Map<String, dynamic> get data => {
    '\$id': 'doc-123',
    'campaignName': 'Test Campaign',
    'goalAmount': 1000000,
  };
}

class MockDocumentResponse extends Mock implements models.Document {
  @override
  Map<String, dynamic> toMap() => {
    '\$id': 'doc-123',
    'campaignName': 'Test Campaign',
    'goalAmount': 1000000,
  };

  @override
  Map<String, dynamic> get data => {
    '\$id': 'doc-123',
    'campaignName': 'Test Campaign',
    'goalAmount': 1000000,
  };
}
