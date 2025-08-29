import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ika_smansara/data/appwrite/appwrite_campaign_repository.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/campaign_request.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.dart';

class MockClient extends Mock implements Client {}
class MockDatabases extends Mock implements Databases {}
class MockStorage extends Mock implements Storage {}

void main() {
  late AppwriteCampaignRepository repository;
  late MockClient mockClient;
  late MockDatabases mockDatabases;
  late MockStorage mockStorage;

  setUp(() {
    mockClient = MockClient();
    mockDatabases = MockDatabases();
    mockStorage = MockStorage();
    repository = AppwriteCampaignRepository(appwriteClient: mockClient);

    // Mock the late final fields
    repository._databases = mockDatabases;
    repository._storage = mockStorage;
  });

  setUpAll(() {
    // Mock dotenv for testing
    dotenv.testLoad(fileInput: '''
      BUCKET_IMAGE_CAMPAIGN=test-bucket
      DATABASE_ID=test-database
      CAMPAIGN_DOCUMENT_ID=test-collection
      PROJECT_ID=test-project
    ''');
  });

  final tCampaignRequest = CampaignRequest(
    campaignName: 'Test Campaign',
    goalAmount: 1000000,
    campaignDescription: 'Test Description',
  );

  final tImageFile = File('test_image.jpg');

  group('AppwriteCampaignRepository', () {
    group('createCampaign', () {
      test('should return CampaignDocument when creation succeeds', () async {
        // Arrange
        final mockFileResponse = MockFileResponse();
        when(mockFileResponse.$id).thenReturn('file-123');
        when(mockFileResponse.bucketId).thenReturn('test-bucket');

        final mockDocumentResponse = MockDocumentResponse();
        when(mockDocumentResponse.toMap()).thenReturn({
          '\$id': 'doc-123',
          'campaignName': 'Test Campaign',
          'goalAmount': 1000000,
        });

        when(mockStorage.createFile(
          bucketId: anyNamed('bucketId'),
          fileId: anyNamed('fileId'),
          file: anyNamed('file'),
          permissions: anyNamed('permissions'),
        )).thenAnswer((_) async => mockFileResponse);

        when(mockDatabases.createDocument(
          databaseId: anyNamed('databaseId'),
          collectionId: anyNamed('collectionId'),
          documentId: anyNamed('documentId'),
          data: anyNamed('data'),
          permissions: anyNamed('permissions'),
        )).thenAnswer((_) async => mockDocumentResponse);

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
        final mockFileResponse = MockFileResponse();
        when(mockFileResponse.$id).thenReturn(''); // Empty ID means failure

        when(mockStorage.createFile(
          bucketId: anyNamed('bucketId'),
          fileId: anyNamed('fileId'),
          file: anyNamed('file'),
          permissions: anyNamed('permissions'),
        )).thenAnswer((_) async => mockFileResponse);

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
        when(mockStorage.createFile(
          bucketId: anyNamed('bucketId'),
          fileId: anyNamed('fileId'),
          file: anyNamed('file'),
          permissions: anyNamed('permissions'),
        )).thenThrow(AppwriteException('Upload failed', 500));

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
        final mockFileResponse = MockFileResponse();
        when(mockFileResponse.$id).thenReturn('file-123');
        when(mockFileResponse.bucketId).thenReturn('test-bucket');

        final mockDocumentResponse = MockDocumentResponse();
        when(mockDocumentResponse.toMap()).thenReturn({
          '\$id': 'doc-123',
          'campaignName': 'Test Campaign',
          'goalAmount': 1000000,
        });

        when(mockStorage.createFile(
          bucketId: anyNamed('bucketId'),
          fileId: anyNamed('fileId'),
          file: anyNamed('file'),
          permissions: anyNamed('permissions'),
        )).thenAnswer((_) async => mockFileResponse);

        when(mockDatabases.createDocument(
          databaseId: anyNamed('databaseId'),
          collectionId: anyNamed('collectionId'),
          documentId: anyNamed('documentId'),
          data: anyNamed('data'),
          permissions: anyNamed('permissions'),
        )).thenAnswer((_) async => mockDocumentResponse);

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
        final mockDocumentResponse = MockDocumentResponse();
        when(mockDocumentResponse.toMap()).thenReturn({
          '\$id': 'doc-123',
          'campaignName': 'Test Campaign',
          'goalAmount': 1000000,
        });

        when(mockDatabases.getDocument(
          databaseId: anyNamed('databaseId'),
          collectionId: anyNamed('collectionId'),
          documentId: anyNamed('documentId'),
        )).thenAnswer((_) async => mockDocumentResponse);

        // Act
        final result = await repository.getCampaignDetail(campaignId: 'doc-123');

        // Assert
        expect(result.isSuccess, true);
        expect(result.resultValue, isA<CampaignDocument>());
      });

      test('should return Failed when AppwriteException occurs', () async {
        // Arrange
        when(mockDatabases.getDocument(
          databaseId: anyNamed('databaseId'),
          collectionId: anyNamed('collectionId'),
          documentId: anyNamed('documentId'),
        )).thenThrow(AppwriteException('Document not found', 404));

        // Act
        final result = await repository.getCampaignDetail(campaignId: 'doc-123');

        // Assert
        expect(result.isFailed, true);
        expect(result.errorMessage, 'Document not found');
      });
    });
  });
}

// Mock classes for Appwrite responses
class MockFileResponse extends Mock implements File {}
class MockDocumentResponse extends Mock implements Document {}