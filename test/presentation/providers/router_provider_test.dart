import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/transaction_request.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';

void main() {
  late ProviderContainer container;
  late GoRouter router;

  setUp(() {
    container = ProviderContainer();
    router = container.read(routerProvider);
  });

  tearDown(() {
    container.dispose();
  });

  group('Router Provider', () {
    group('Campaign routes', () {
      test('should handle valid campaign data for campaign-detail-page', () {
        final campaign = CampaignDocument(
          id: 'test-id',
          campaignName: 'Test Campaign',
        );

        final routeMatch = router.routerDelegate.currentConfiguration;
        final location = '/campaign-detail-page?from-home=true';

        // Test that the route can be built with valid data
        expect(() {
          router.go(location, extra: campaign);
        }, returnsNormally);
      });

      test('should handle invalid campaign data for campaign-detail-page', () {
        final location = '/campaign-detail-page?from-home=true';

        // Test that the route can be built with invalid data
        expect(() {
          router.go(location, extra: 'invalid-data');
        }, returnsNormally);
      });

      test('should handle null campaign data for campaign-detail-page', () {
        final location = '/campaign-detail-page?from-home=true';

        // Test that the route can be built with null data
        expect(() {
          router.go(location, extra: null);
        }, returnsNormally);
      });
    });

    group('Checkout routes', () {
      test('should handle valid campaign data for checkout-page', () {
        final campaign = CampaignDocument(
          id: 'test-id',
          campaignName: 'Test Campaign',
        );

        final location = '/checkout-page';

        // Test that the route can be built with valid data
        expect(() {
          router.go(location, extra: campaign);
        }, returnsNormally);
      });

      test('should handle invalid campaign data for checkout-page', () {
        final location = '/checkout-page';

        // Test that the route can be built with invalid data
        expect(() {
          router.go(location, extra: 'invalid-data');
        }, returnsNormally);
      });
    });

    group('Transaction routes', () {
      test('should handle valid transaction data for webview-snap-page', () {
        final transaction = TransactionRequest(
          campaignId: 'campaign-123',
          amount: 100000,
        );

        final location = '/webview-snap-page';

        // Test that the route can be built with valid data
        expect(() {
          router.go(location, extra: transaction);
        }, returnsNormally);
      });

      test('should handle invalid transaction data for webview-snap-page', () {
        final location = '/webview-snap-page';

        // Test that the route can be built with invalid data
        expect(() {
          router.go(location, extra: 'invalid-data');
        }, returnsNormally);
      });

      test('should handle valid transaction ID for detail-transaction-page', () {
        final location = '/detail-transaction-page';

        // Test that the route can be built with valid data
        expect(() {
          router.go(location, extra: 'transaction-123');
        }, returnsNormally);
      });

      test('should handle invalid transaction ID for detail-transaction-page', () {
        final location = '/detail-transaction-page';

        // Test that the route can be built with invalid data
        expect(() {
          router.go(location, extra: 123);
        }, returnsNormally);
      });
    });

    group('User profile routes', () {
      test('should handle valid user profile data for update-user-profile-page', () {
        final userProfile = UserProfileDocument(
          id: 'user-123',
          name: 'John Doe',
          email: 'john@example.com',
        );

        final location = '/update-user-profile-page';

        // Test that the route can be built with valid data
        expect(() {
          router.go(location, extra: userProfile);
        }, returnsNormally);
      });

      test('should handle invalid user profile data for update-user-profile-page', () {
        final location = '/update-user-profile-page';

        // Test that the route can be built with invalid data
        expect(() {
          router.go(location, extra: 'invalid-data');
        }, returnsNormally);
      });
    });

    group('Campaign management routes', () {
      test('should handle valid user ID for my-campaigns-list-page', () {
        final location = '/my-campaigns-list-page';

        // Test that the route can be built with valid data
        expect(() {
          router.go(location, extra: 'user-123');
        }, returnsNormally);
      });

      test('should handle invalid user ID for my-campaigns-list-page', () {
        final location = '/my-campaigns-list-page';

        // Test that the route can be built with invalid data
        expect(() {
          router.go(location, extra: 123);
        }, returnsNormally);
      });
    });

    group('Route configuration', () {
      test('should have correct initial location', () {
        expect(router.routeInformationProvider.value.location, '/home');
      });

      test('should have all required routes', () {
        final routes = router.configuration.routes;

        // Check that we have the expected number of routes
        expect(routes.length, greaterThan(20));

        // Check that specific routes exist by trying to match them
        final expectedRoutes = [
          '/home',
          '/login',
          '/register',
          '/campaign-detail-page',
          '/checkout-page',
          '/webview-snap-page',
          '/detail-transaction-page',
          '/user-profile-page',
          '/update-user-profile-page',
          '/my-campaigns-list-page',
          '/bank-account-list-page',
          '/create-bank-account-page',
          '/update-account-bank-page',
          '/update-campaign-page',
          '/payout-history-page',
          '/request-payout-page',
        ];

        for (final routePath in expectedRoutes) {
          final routeExists = routes.any((route) {
            if (route is GoRoute) {
              return route.path == routePath;
            }
            return false;
          });
          expect(routeExists, isTrue, reason: 'Route $routePath should exist');
        }
      });
    });
  });
}