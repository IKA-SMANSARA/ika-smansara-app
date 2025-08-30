import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ika_smansara/presentation/widgets/vertical_campaign_card.dart';

void main() {
  group('VerticalCampaignCard', () {
    const testData = (
      imageUrl: 'https://example.com/image.jpg',
      campaignName: 'Test Campaign',
      dateEndCampaign: '2024-12-31T23:59:59.000Z',
      campaignGoalAmount: 1000000,
      campaignCurrentAmount: 500000,
    );

    // Expected formatted values
    const expectedCurrencyFormat = 'Rp500.000';

    testWidgets('should display campaign information correctly', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: VerticalCampaignCard(
              imageUrl: testData.imageUrl,
              campaignName: testData.campaignName,
              dateEndCampaign: testData.dateEndCampaign,
              campaignGoalAmount: testData.campaignGoalAmount,
              campaignCurrentAmount: testData.campaignCurrentAmount,
            ),
          ),
        ),
      );

      // Check if campaign name is displayed
      expect(find.text(testData.campaignName), findsOneWidget);

      // Check if "Donasi Terkumpul" text is displayed
      expect(find.text('Donasi Terkumpul'), findsOneWidget);

       // Check if remaining days calculation is shown
       expect(find.textContaining('hari'), findsOneWidget);

      // Check if progress indicator is present
      expect(find.byType(LinearProgressIndicator), findsWidgets);
    });

    testWidgets('should handle onTap callback', (tester) async {
      bool tapped = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: VerticalCampaignCard(
              onTap: () => tapped = true,
              imageUrl: testData.imageUrl,
              campaignName: testData.campaignName,
              dateEndCampaign: testData.dateEndCampaign,
              campaignGoalAmount: testData.campaignGoalAmount,
              campaignCurrentAmount: testData.campaignCurrentAmount,
            ),
          ),
        ),
      );

      // Tap on the card
      await tester.tap(find.byType(GestureDetector));
      await tester.pump();

      expect(tapped, true);
    });

    testWidgets('should handle null onTap callback', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: VerticalCampaignCard(
              onTap: null,
              imageUrl: testData.imageUrl,
              campaignName: testData.campaignName,
              dateEndCampaign: testData.dateEndCampaign,
              campaignGoalAmount: testData.campaignGoalAmount,
              campaignCurrentAmount: testData.campaignCurrentAmount,
            ),
          ),
        ),
      );

      // Should not throw error when tapped with null callback
      await tester.tap(find.byType(GestureDetector));
      await tester.pump();
    });

    testWidgets('should display correct currency format', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: VerticalCampaignCard(
              imageUrl: testData.imageUrl,
              campaignName: testData.campaignName,
              dateEndCampaign: testData.dateEndCampaign,
              campaignGoalAmount: testData.campaignGoalAmount,
              campaignCurrentAmount: testData.campaignCurrentAmount,
            ),
          ),
        ),
      );

      // Check if current amount is formatted correctly
      expect(find.text(expectedCurrencyFormat), findsOneWidget);
    });

    testWidgets('should handle different width values', (tester) async {
      const customWidth = 250.0;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: VerticalCampaignCard(
              imageUrl: testData.imageUrl,
              campaignName: testData.campaignName,
              dateEndCampaign: testData.dateEndCampaign,
              campaignGoalAmount: testData.campaignGoalAmount,
              campaignCurrentAmount: testData.campaignCurrentAmount,
              width: customWidth,
            ),
          ),
        ),
      );

      // Find the VerticalCampaignCard widget
      final campaignCard = tester.widget<VerticalCampaignCard>(
        find.byType(VerticalCampaignCard),
      );

      expect(campaignCard.width, customWidth);
    });

    testWidgets('should handle empty strings gracefully', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: VerticalCampaignCard(
              imageUrl: '',
              campaignName: 'Test Campaign',
              dateEndCampaign: '2024-12-31T23:59:59.000Z',
              campaignGoalAmount: 1000000,
              campaignCurrentAmount: 0,
            ),
          ),
        ),
      );

      // Should not crash with empty strings
      expect(find.byType(VerticalCampaignCard), findsOneWidget);
    });

    testWidgets('should handle zero amounts', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: VerticalCampaignCard(
              imageUrl: testData.imageUrl,
              campaignName: testData.campaignName,
              dateEndCampaign: testData.dateEndCampaign,
              campaignGoalAmount: 1000000, // Non-zero goal amount
              campaignCurrentAmount: 0,
            ),
          ),
        ),
      );

      // Should handle zero current amounts gracefully
      expect(find.byType(VerticalCampaignCard), findsOneWidget);
    });

    testWidgets('should handle very large amounts', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: VerticalCampaignCard(
              imageUrl: testData.imageUrl,
              campaignName: testData.campaignName,
              dateEndCampaign: testData.dateEndCampaign,
              campaignGoalAmount: 1000000000, // 1 billion
              campaignCurrentAmount: 500000000, // 500 million
            ),
          ),
        ),
      );

      // Should format large numbers correctly
      expect(find.text('Rp.500.000.000'), findsOneWidget);
    });

    testWidgets('should have correct structure', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: VerticalCampaignCard(
              imageUrl: testData.imageUrl,
              campaignName: testData.campaignName,
              dateEndCampaign: testData.dateEndCampaign,
              campaignGoalAmount: testData.campaignGoalAmount,
              campaignCurrentAmount: testData.campaignCurrentAmount,
            ),
          ),
        ),
      );

      // Check widget structure
      expect(find.byType(GestureDetector), findsOneWidget);
      expect(find.byType(AspectRatio), findsOneWidget);
      expect(find.byType(CachedNetworkImage), findsOneWidget);
      expect(find.byType(Column), findsWidgets); // Multiple columns
      expect(find.byType(AutoSizeText), findsWidgets); // Multiple text widgets
      expect(find.byType(LinearProgressIndicator), findsWidgets);
    });
  });
}