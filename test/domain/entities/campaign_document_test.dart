import 'package:flutter_test/flutter_test.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';

void main() {
  group('CampaignDocument', () {
    group('Factory constructor', () {
      test('should create instance with default values', () {
        final campaign = CampaignDocument();

        expect(campaign.id, null);
        expect(campaign.campaignName, null);
        expect(campaign.goalAmount, 0);
        expect(campaign.isActive, false);
        expect(campaign.isDeleted, false);
        expect(campaign.backerCount, 0);
        expect(campaign.currentAmount, 0);
        expect(campaign.permissions, []);
        expect(campaign.categories, []);
      });

      test('should create instance with provided values', () {
        final campaign = CampaignDocument(
          id: 'test-id',
          campaignName: 'Test Campaign',
          goalAmount: 1000000,
          isActive: true,
          backerCount: 5,
          currentAmount: 500000,
          campaignDescription: 'Test description',
          createdBy: 'user123',
        );

        expect(campaign.id, 'test-id');
        expect(campaign.campaignName, 'Test Campaign');
        expect(campaign.goalAmount, 1000000);
        expect(campaign.isActive, true);
        expect(campaign.backerCount, 5);
        expect(campaign.currentAmount, 500000);
        expect(campaign.campaignDescription, 'Test description');
        expect(campaign.createdBy, 'user123');
      });
    });

    group('fromJson', () {
      test('should create instance from valid JSON', () {
        final json = {
          '\$id': 'test-id',
          '\$collectionId': 'campaigns',
          '\$databaseId': 'main',
          '\$createdAt': '2024-01-01T00:00:00.000Z',
          '\$updatedAt': '2024-01-02T00:00:00.000Z',
          '\$permissions': ['read("user:*")'],
          'campaignName': 'Test Campaign',
          'goalAmount': 1000000,
          'dateStartCampaign': '2024-01-01',
          'dateEndCampaign': '2024-12-31',
          'isDeleted': false,
          'isActive': true,
          'photoThumbnail': 'https://example.com/image.jpg',
          'backerCount': 5,
          'categories': ['education', 'health'],
          'currentAmount': 500000,
          'campaignDescription': 'Test description',
          'createdBy': 'user123',
        };

        final campaign = CampaignDocument.fromJson(json);

        expect(campaign.id, 'test-id');
        expect(campaign.collectionId, 'campaigns');
        expect(campaign.databaseId, 'main');
        expect(campaign.campaignName, 'Test Campaign');
        expect(campaign.goalAmount, 1000000);
        expect(campaign.isActive, true);
        expect(campaign.backerCount, 5);
        expect(campaign.categories, ['education', 'health']);
        expect(campaign.currentAmount, 500000);
      });

      test('should handle missing fields gracefully', () {
        final json = {
          '\$id': 'test-id',
          'campaignName': 'Test Campaign',
        };

        final campaign = CampaignDocument.fromJson(json);

        expect(campaign.id, 'test-id');
        expect(campaign.campaignName, 'Test Campaign');
        expect(campaign.goalAmount, 0); // default value
        expect(campaign.isActive, false); // default value
        expect(campaign.permissions, []); // default value
      });

      test('should handle null values', () {
        final json = {
          '\$id': null,
          'campaignName': null,
          'goalAmount': null,
          'isActive': null,
        };

        final campaign = CampaignDocument.fromJson(json);

        expect(campaign.id, null);
        expect(campaign.campaignName, null);
        expect(campaign.goalAmount, 0); // default value
        expect(campaign.isActive, false); // default value
      });
    });

    group('copyWith', () {
      test('should create copy with modified values', () {
        final original = CampaignDocument(
          id: 'original-id',
          campaignName: 'Original Campaign',
          goalAmount: 1000000,
          isActive: false,
        );

        final copy = original.copyWith(
          campaignName: 'Updated Campaign',
          isActive: true,
        );

        expect(copy.id, 'original-id'); // unchanged
        expect(copy.campaignName, 'Updated Campaign'); // changed
        expect(copy.goalAmount, 1000000); // unchanged
        expect(copy.isActive, true); // changed
      });

      test('should handle null values in copyWith', () {
        final original = CampaignDocument(
          campaignName: 'Original Campaign',
          goalAmount: 1000000,
        );

        final copy = original.copyWith(
          campaignName: null,
          goalAmount: null,
        );

        expect(copy.campaignName, null);
        expect(copy.goalAmount, null);
      });
    });

    group('Equality', () {
      test('should be equal when all fields are the same', () {
        final campaign1 = CampaignDocument(
          id: 'test-id',
          campaignName: 'Test Campaign',
          goalAmount: 1000000,
        );

        final campaign2 = CampaignDocument(
          id: 'test-id',
          campaignName: 'Test Campaign',
          goalAmount: 1000000,
        );

        expect(campaign1, equals(campaign2));
      });

      test('should not be equal when fields differ', () {
        final campaign1 = CampaignDocument(
          id: 'test-id-1',
          campaignName: 'Test Campaign',
        );

        final campaign2 = CampaignDocument(
          id: 'test-id-2',
          campaignName: 'Test Campaign',
        );

        expect(campaign1, isNot(equals(campaign2)));
      });
    });

    group('toString', () {
      test('should provide meaningful string representation', () {
        final campaign = CampaignDocument(
          id: 'test-id',
          campaignName: 'Test Campaign',
        );

        final string = campaign.toString();

        expect(string, contains('CampaignDocument'));
        expect(string, contains('test-id'));
        expect(string, contains('Test Campaign'));
      });
    });

    group('hashCode', () {
      test('should generate consistent hash codes', () {
        final campaign1 = CampaignDocument(
          id: 'test-id',
          campaignName: 'Test Campaign',
        );

        final campaign2 = CampaignDocument(
          id: 'test-id',
          campaignName: 'Test Campaign',
        );

        expect(campaign1.hashCode, equals(campaign2.hashCode));
      });

      test('should generate different hash codes for different values', () {
        final campaign1 = CampaignDocument(id: 'id1');
        final campaign2 = CampaignDocument(id: 'id2');

        expect(campaign1.hashCode, isNot(equals(campaign2.hashCode)));
      });
    });
  });
}