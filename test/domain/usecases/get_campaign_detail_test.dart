import 'package:flutter_test/flutter_test.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/get_campaign_detail/get_campaign_detail.dart';
import 'package:ika_smansara/domain/usecases/get_campaign_detail/get_campaign_detail_params.dart';
import 'package:mockito/mockito.dart';

import '../helpers/test_helper.dart';

void main() {
  late GetCampaignDetail usecase;
  late MockCampaignRepository mockRepository;

  setUp(() {
    mockRepository = MockCampaignRepository();
    usecase = GetCampaignDetail(campaignRepository: mockRepository);
  });

  const tCampaignDocument = CampaignDocument(
    id: 'test-id',
    campaignName: 'Test Campaign',
    goalAmount: 1000000,
    isActive: true,
  );

  const tParams = GetCampaignDetailParams(campaignId: 'test-id');

  group('GetCampaignDetail', () {
    test('should return CampaignDocument when repository returns Success', () async {
      // Arrange
      when(mockRepository.getCampaignDetail(campaignId: anyNamed('campaignId')))
          .thenAnswer((_) async => Result.success(tCampaignDocument));

      // Act
      final result = await usecase.call(tParams);

      // Assert
      expect(result.isSuccess, true);
      expect(result.resultValue, tCampaignDocument);
    });

    test('should return Failed when repository returns Failed', () async {
      // Arrange
      const errorMessage = 'Campaign not found';
      when(mockRepository.getCampaignDetail(campaignId: anyNamed('campaignId')))
          .thenAnswer((_) async => Result.failed(errorMessage));

      // Act
      final result = await usecase.call(tParams);

      // Assert
      expect(result.isFailed, true);
      expect(result.errorMessage, errorMessage);
    });

    test('should return Failed when repository throws exception', () async {
      // Arrange
      when(mockRepository.getCampaignDetail(campaignId: anyNamed('campaignId')))
          .thenThrow(Exception('Network error'));

      // Act
      final result = await usecase.call(tParams);

      // Assert
      expect(result.isFailed, true);
      expect(result.errorMessage, 'Exception: Network error');
    });

    test('should handle null error message from repository', () async {
      // Arrange
      when(mockRepository.getCampaignDetail(campaignId: anyNamed('campaignId')))
          .thenAnswer((_) async => Result.failed(null));

      // Act
      final result = await usecase.call(tParams);

      // Assert
      expect(result.isFailed, true);
      expect(result.errorMessage, 'Error!');
    });

    test('should pass correct campaignId to repository', () async {
      // Arrange
      when(mockRepository.getCampaignDetail(campaignId: anyNamed('campaignId')))
          .thenAnswer((_) async => Result.success(tCampaignDocument));

      // Act
      await usecase.call(tParams);

      // Assert
      verify(mockRepository.getCampaignDetail(campaignId: 'test-id')).called(1);
    });
  });
}