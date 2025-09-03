import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/category_document.dart';
import 'package:ika_smansara/domain/entities/transaction_request.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_document.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/presentation/pages/backer_list_page/backer_list_page.dart';
import 'package:ika_smansara/presentation/pages/bank_account_list_page/bank_account_list_page.dart';
import 'package:ika_smansara/presentation/pages/campaign_detail_page/campaign_detail_page.dart';
import 'package:ika_smansara/presentation/pages/checkout_page/checkout_page.dart';
import 'package:ika_smansara/presentation/pages/create_account_bank_page/create_account_bank_page.dart';
import 'package:ika_smansara/presentation/pages/create_campaign_page/create_campaign_page.dart';
import 'package:ika_smansara/presentation/pages/detail_transaction_page/detail_transaction_page.dart';
import 'package:ika_smansara/presentation/pages/list_all_question_page/list_all_question_page.dart';
import 'package:ika_smansara/presentation/pages/get_question_detail_page/get_question_detail_page.dart';
import 'package:ika_smansara/presentation/pages/list_campaign_page/list_campaign_page.dart';
import 'package:ika_smansara/presentation/pages/list_user_question_page/list_user_question_page.dart';
import 'package:ika_smansara/presentation/pages/login_page/login_page.dart';
import 'package:ika_smansara/presentation/pages/main_page/main_page.dart';
import 'package:ika_smansara/presentation/pages/my_campaigns_page/my_campaigns_page.dart';
import 'package:ika_smansara/presentation/pages/my_donation_page/my_donation_page.dart';
import 'package:ika_smansara/presentation/pages/payout_history_page/payout_history_page.dart';
import 'package:ika_smansara/presentation/pages/register_page/register_page.dart';
import 'package:ika_smansara/presentation/pages/request_payout_page/request_payout_page.dart';
import 'package:ika_smansara/presentation/pages/success_add_bank_account_page/success_add_bank_account_page.dart';
import 'package:ika_smansara/presentation/pages/update_account_bank_page/update_account_bank_page.dart';
import 'package:ika_smansara/presentation/pages/update_campaign_page/update_campaign_page.dart';
import 'package:ika_smansara/presentation/pages/update_user_profile_page/update_user_profile_page.dart';
import 'package:ika_smansara/presentation/pages/user_profile_page/user_profile_page.dart';
import 'package:ika_smansara/presentation/pages/webview_snap_page/webview_snap_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@Riverpod(keepAlive: true)
Raw<GoRouter> router(RouterRef ref) => GoRouter(
      routes: [
        GoRoute(
          path: '/main',
          name: 'main',
          builder: (context, state) => MainPage(),
        ),
        GoRoute(
          path: '/login',
          name: 'login',
          builder: (context, state) => LoginPage(),
        ),
        GoRoute(
          path: '/register',
          name: 'register',
          builder: (context, state) => const RegisterPage(),
        ),
        GoRoute(
          path: '/create_campaign',
          name: 'create_campaign',
          builder: (context, state) => const CreateCampaignPage(),
        ),
        GoRoute(
          path: '/list_user_question',
          name: 'list_user_question',
          builder: (context, state) => const ListUserQuestionPage(),
        ),
        GoRoute(
          path: '/list_all_question',
          name: 'list_all_question',
          builder: (context, state) => const ListAllQuestionPage(),
        ),
        GoRoute(
          path: '/get_question_detail',
          name: 'get_question_detail',
          builder: (context, state) => GetQuestionDetailPage(
            threadId: state.extra as String,
          ),
        ),
        GoRoute(
          path: '/list-campaign-page',
          name: 'list-campaign-page',
          builder: (context, state) => ListCampaignPage(
            state.extra as CategoryDocument,
          ),
        ),
        GoRoute(
          path: '/campaign-detail-page',
          name: 'campaign-detail-page',
          builder: (context, state) {
            final campaign = state.extra;
            if (campaign is! CampaignDocument) {
              return const Scaffold(
                body: Center(
                  child: Text('Invalid campaign data'),
                ),
              );
            }
            return CampaignDetailPage(
              campaign: campaign,
              fromHome: state.uri.queryParameters['from-home'] ?? 'true',
            );
          },
        ),
        GoRoute(
          path: '/checkout-page',
          name: 'checkout-page',
          builder: (context, state) {
            final campaign = state.extra;
            if (campaign is! CampaignDocument) {
              return const Scaffold(
                body: Center(
                  child: Text('Invalid campaign data'),
                ),
              );
            }
            return CheckoutPage(campaign);
          },
        ),
        GoRoute(
          path: '/backer-list-page',
          name: 'backer-list-page',
          builder: (context, state) {
            final campaign = state.extra;
            if (campaign is! CampaignDocument) {
              return const Scaffold(
                body: Center(
                  child: Text('Invalid campaign data'),
                ),
              );
            }
            return BackerListPage(campaign);
          },
        ),
        GoRoute(
          path: '/webview-snap-page',
          name: 'webview-snap-page',
          builder: (context, state) {
            final transaction = state.extra;
            if (transaction is! TransactionRequest) {
              return const Scaffold(
                body: Center(
                  child: Text('Invalid transaction data'),
                ),
              );
            }
            return WebviewSnapPage(transaction);
          },
        ),
        GoRoute(
          path: '/detail-transaction-page',
          name: 'detail-transaction-page',
          builder: (context, state) {
            final transactionId = state.extra;
            if (transactionId is! String) {
              return const Scaffold(
                body: Center(
                  child: Text('Invalid transaction ID'),
                ),
              );
            }
            return DetailTransactionPage(transactionId: transactionId);
          },
        ),
        GoRoute(
          path: '/user-profile-page',
          name: 'user-profile-page',
          builder: (context, state) => UserProfilePage(),
        ),
        GoRoute(
          path: '/update-user-profile-page',
          name: 'update-user-profile-page',
          builder: (context, state) {
            final userProfile = state.extra;
            if (userProfile is! UserProfileDocument) {
              return const Scaffold(
                body: Center(
                  child: Text('Invalid user profile data'),
                ),
              );
            }
            return UpdateUserProfilePage(userProfileDocument: userProfile);
          },
        ),
        GoRoute(
          path: '/payout-history-page',
          name: 'payout-history-page',
          builder: (context, state) => const PayoutHistoryPage(),
        ),
        GoRoute(
          path: '/my-donation-page',
          name: 'my_donation_page',
          builder: (context, state) => const MyDonationPage(),
        ),
        GoRoute(
          path: '/request-payout-page',
          name: 'request-payout-page',
          builder: (context, state) => const RequestPayoutPage(),
        ),
        GoRoute(
          path: '/my-campaigns-list-page',
          name: 'my-campaigns-list-page',
          builder: (context, state) {
            final userId = state.extra;
            if (userId is! String) {
              return const Scaffold(
                body: Center(
                  child: Text('Invalid user ID'),
                ),
              );
            }
            return MyCampaignsPage(userId: userId);
          },
        ),
        GoRoute(
          path: '/bank-account-list-page',
          name: 'bank-account-list-page',
          builder: (context, state) => const BankAccountListPage(),
        ),
        GoRoute(
          path: '/create-bank-account-page',
          name: 'create-bank-account-page',
          builder: (context, state) => const CreateAccountBankPage(),
        ),
        GoRoute(
          path: '/success-add-bank-account-page',
          name: 'success-add-bank-account-page',
          builder: (context, state) => const SuccessAddBankAccountPage(),
        ),
        GoRoute(
          path: '/update-account-bank-page',
          name: 'update-account-bank-page',
          builder: (context, state) {
            final accountBank = state.extra;
            if (accountBank is! UserAccountBankDocument) {
              return const Scaffold(
                body: Center(
                  child: Text('Invalid account bank data'),
                ),
              );
            }
            return UpdateAccountBankPage(userAccountBankDocument: accountBank);
          },
        ),
        GoRoute(
          path: '/update-campaign-page',
          name: 'update-campaign-page',
          builder: (context, state) => UpdateCampaignPage(
            campaignDocument: state.extra as CampaignDocument,
          ),
        ),
      ],
      initialLocation: '/login',
    );
