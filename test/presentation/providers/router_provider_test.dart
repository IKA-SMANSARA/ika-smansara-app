import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/transaction_request.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';

void main() {
  late GoRouter router;

  setUp(() {
    router = routerProvider;
  });

  group('Router Provider', () {
    group('Campaign routes', () {
      test('should handle valid campaign data for campaign-detail-page', () {
        final campaign = CampaignDocument(
          id: 'test-id',
          campaignName: 'Test Campaign',
        );

        final route = router.routeInformationParser.configuration.findMatch(
          '/campaign-detail-page?from-home=true',
          extra: campaign,
        );

        expect(route.isNotEmpty, true);
        expect(route.first.route.path, '/campaign-detail-page');
      });

      test('should handle invalid campaign data for campaign-detail-page', () {
        final route = router.routeInformationParser.configuration.findMatch(
          '/campaign-detail-page?from-home=true',
          extra: 'invalid-data', // Not a CampaignDocument
        );

        expect(route.isNotEmpty, true);
        expect(route.first.route.path, '/campaign-detail-page');
      });

      test('should handle null campaign data for campaign-detail-page', () {
        final route = router.routeInformationParser.configuration.findMatch(
          '/campaign-detail-page?from-home=true',
          extra: null,
        );

        expect(route.isNotEmpty, true);
        expect(route.first.route.path, '/campaign-detail-page');
      });
    });

    group('Checkout routes', () {
      test('should handle valid campaign data for checkout-page', () {
        final campaign = CampaignDocument(
          id: 'test-id',
          campaignName: 'Test Campaign',
        );

        final route = router.routeInformationParser.configuration.findMatch(
          '/checkout-page',
          extra: campaign,
        );

        expect(route.isNotEmpty, true);
        expect(route.first.route.path, '/checkout-page');
      });

      test('should handle invalid campaign data for checkout-page', () {
        final route = router.routeInformationParser.configuration.findMatch(
          '/checkout-page',
          extra: 'invalid-data',
        );

        expect(route.isNotEmpty, true);
        expect(route.first.route.path, '/checkout-page');
      });
    });

    group('Transaction routes', () {
      test('should handle valid transaction data for webview-snap-page', () {
        final transaction = TransactionRequest(
          campaignId: 'campaign-123',
          amount: 100000,
        );

        final route = router.routeInformationParser.configuration.findMatch(
          '/webview-snap-page',
          extra: transaction,
        );

        expect(route.isNotEmpty, true);
        expect(route.first.route.path, '/webview-snap-page');
      });

      test('should handle invalid transaction data for webview-snap-page', () {
        final route = router.routeInformationParser.configuration.findMatch(
          '/webview-snap-page',
          extra: 'invalid-data',
        );

        expect(route.isNotEmpty, true);
        expect(route.first.route.path, '/webview-snap-page');
      });

      test('should handle valid transaction ID for detail-transaction-page', () {
        final route = router.routeInformationParser.configuration.findMatch(
          '/detail-transaction-page',
          extra: 'transaction-123',
        );

        expect(route.isNotEmpty, true);
        expect(route.first.route.path, '/detail-transaction-page');
      });

      test('should handle invalid transaction ID for detail-transaction-page', () {
        final route = router.routeInformationParser.configuration.findMatch(
          '/detail-transaction-page',
          extra: 123, // Not a String
        );

        expect(route.isNotEmpty, true);
        expect(route.first.route.path, '/detail-transaction-page');
      });
    });

    group('User profile routes', () {
      test('should handle valid user profile data for update-user-profile-page', () {
        final userProfile = UserProfileDocument(
          id: 'user-123',
          name: 'John Doe',
          email: 'john@example.com',
        );

        final route = router.routeInformationParser.configuration.findMatch(
          '/update-user-profile-page',
          extra: userProfile,
        );

        expect(route.isNotEmpty, true);
        expect(route.first.route.path, '/update-user-profile-page');
      });

      test('should handle invalid user profile data for update-user-profile-page', () {
        final route = router.routeInformationParser.configuration.findMatch(
          '/update-user-profile-page',
          extra: 'invalid-data',
        );

        expect(route.isNotEmpty, true);
        expect(route.first.route.path, '/update-user-profile-page');
      });
    });

    group('Campaign management routes', () {
      test('should handle valid user ID for my-campaigns-list-page', () {
        final route = router.routeInformationParser.configuration.findMatch(
          '/my-campaigns-list-page',
          extra: 'user-123',
        );

        expect(route.isNotEmpty, true);
        expect(route.first.route.path, '/my-campaigns-list-page');
      });

      test('should handle invalid user ID for my-campaigns-list-page', () {
        final route = router.routeInformationParser.configuration.findMatch(
          '/my-campaigns-list-page',
          extra: 123, // Not a String
        );

        expect(route.isNotEmpty, true);
        expect(route.first.route.path, '/my-campaigns-list-page');
      });
    });

    group('Route configuration', () {
      test('should have correct initial location', () {
        expect(router.routeInformationParser.configuration.initialLocation, '/login');
      });

      test('should have all required routes', () {
        final routes = router.routeInformationParser.configuration.routes;

        final routePaths = routes.map((route) => route.path).toList();

        expect(routePaths, contains('/main'));
        expect(routePaths, contains('/login'));
        expect(routePaths, contains('/register'));
        expect(routePaths, contains('/campaign-detail-page'));
        expect(routePaths, contains('/checkout-page'));
        expect(routePaths, contains('/webview-snap-page'));
        expect(routePaths, contains('/detail-transaction-page'));
        expect(routePaths, contains('/user-profile-page'));
        expect(routePaths, contains('/update-user-profile-page'));
        expect(routePaths, contains('/my-campaigns-list-page'));
        expect(routePaths, contains('/bank-account-list-page'));
        expect(routePaths, contains('/create-bank-account-page'));
        expect(routePaths, contains('/update-account-bank-page'));
        expect(routePaths, contains('/update-campaign-page'));
        expect(routePaths, contains('/payout-history-page'));
        expect(routePaths, contains('/request-payout-page'));
      });
    });
  });
}