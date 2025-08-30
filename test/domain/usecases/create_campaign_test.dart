import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/campaign_request.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/create_campaign/create_campaign.dart';
import 'package:ika_smansara/domain/usecases/create_campaign/create_campaign_params.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.dart';

void main() {
  late CreateCampaign usecase;
  late MockCampaignRepository mockRepository;

  setUp(() {
    mockRepository = MockCampaignRepository();
    usecase = CreateCampaign(campaignRepository: mockRepository);
  });

  final tCampaignDocument = CampaignDocument(
    id: 'test-id',
    campaignName: 'Test Campaign',
    goalAmount: 1000000,
    isActive: true,
  );

  final tCampaignRequest = CampaignRequest(
    campaignName: 'Test Campaign',
    goalAmount: 1000000,
    campaignDescription: 'Test Description',
  );

  final tImageFile = File('test_image.jpg');
  final tParams = CreateCampaignParams(
    campaignRequest: tCampaignRequest,
    imageFile: tImageFile,
  );

  group('CreateCampaign', () {
    test('should return CampaignDocument when repository returns Success', () async {
      // Arrange
      when(mockRepository.createCampaign(
        campaignRequest: any(),
        imageFile: any(),
      )).thenAnswer((_) async => Result.success(tCampaignDocument));

      // Act
      final result = await usecase.call(tParams);

      // Assert
      expect(result.isSuccess, true);
      expect(result.resultValue, tCampaignDocument);
    });

    test('should return Failed when repository returns Failed', () async {
      // Arrange
      const errorMessage = 'Failed to create campaign';
      when(mockRepository.createCampaign(
        campaignRequest: any(),
        imageFile: any(),
      )).thenAnswer((_) async => Result.failed(errorMessage));

      // Act
      final result = await usecase.call(tParams);

      // Assert
      expect(result.isFailed, true);
      expect(result.errorMessage, errorMessage);
    });

    test('should return Failed when repository throws exception', () async {
      // Arrange
      when(mockRepository.createCampaign(
        campaignRequest: any(),
        imageFile: any(),
      )).thenThrow(Exception('Network error'));

      // Act
      final result = await usecase.call(tParams);

      // Assert
      expect(result.isFailed, true);
      expect(result.errorMessage, 'Exception: Network error');
    });

    test('should handle null error message from repository', () async {
      // Arrange
      when(mockRepository.createCampaign(
        campaignRequest: any(),
        imageFile: any(),
      )).thenAnswer((_) async => Result.failed('Error!'));

      // Act
      final result = await usecase.call(tParams);

      // Assert
      expect(result.isFailed, true);
      expect(result.errorMessage, 'Error!');
    });
  });
}