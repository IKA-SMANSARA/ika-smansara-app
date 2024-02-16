import 'package:go_router/go_router.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/category_document.dart';
import 'package:ika_smansara/domain/entities/transaction_request.dart';
import 'package:ika_smansara/domain/entities/user_account_bank_document.dart';
import 'package:ika_smansara/presentation/pages/backer_list_page/backer_list_page.dart';
import 'package:ika_smansara/presentation/pages/bank_account_detail_page/bank_account_detail_page.dart';
import 'package:ika_smansara/presentation/pages/bank_account_list_page/bank_account_list_page.dart';
import 'package:ika_smansara/presentation/pages/campaign_detail_page/campaign_detail_page.dart';
import 'package:ika_smansara/presentation/pages/checkout_page/checkout_page.dart';
import 'package:ika_smansara/presentation/pages/create_account_bank_page/create_account_bank_page.dart';
import 'package:ika_smansara/presentation/pages/create_campaign_page/create_campaign_page.dart';
import 'package:ika_smansara/presentation/pages/detail_transaction_page/detail_transaction_page.dart';
import 'package:ika_smansara/presentation/pages/list_campaign_page/list_campaign_page.dart';
import 'package:ika_smansara/presentation/pages/login_page/login_page.dart';
import 'package:ika_smansara/presentation/pages/main_page/main_page.dart';
import 'package:ika_smansara/presentation/pages/my_campaigns_page/my_campaigns_page.dart';
import 'package:ika_smansara/presentation/pages/register_page/register_page.dart';
import 'package:ika_smansara/presentation/pages/success_add_bank_account_page/success_add_bank_account_page.dart';
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
          path: '/list-campaign-page',
          name: 'list-campaign-page',
          builder: (context, state) => ListCampaignPage(
            state.extra as CategoryDocument,
          ),
        ),
        GoRoute(
          path: '/campaign-detail-page',
          name: 'campaign-detail-page',
          builder: (context, state) => CampaignDetailPage(
            campaign: state.extra as CampaignDocument,
            fromHome: state.uri.queryParameters['from-home'] ?? 'true',
          ),
        ),
        GoRoute(
          path: '/checkout-page',
          name: 'checkout-page',
          builder: (context, state) => CheckoutPage(
            state.extra as CampaignDocument,
          ),
        ),
        GoRoute(
          path: '/backer-list-page',
          name: 'backer-list-page',
          builder: (context, state) => BackerListPage(
            state.extra as CampaignDocument,
          ),
        ),
        GoRoute(
          path: '/webview-snap-page',
          name: 'webview-snap-page',
          builder: (context, state) => WebviewSnapPage(
            state.extra as TransactionRequest,
          ),
        ),
        GoRoute(
          path: '/detail-transaction-page',
          name: 'detail-transaction-page',
          builder: (context, state) => DetailTransactionPage(
            transactionId: state.extra as String,
          ),
        ),
        GoRoute(
          path: '/my-campaigns-list-page',
          name: 'my-campaigns-list-page',
          builder: (context, state) => MyCampaignsPage(
            userId: state.extra as String,
          ),
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
          path: '/bank-account-detail-page',
          name: 'bank-account-detail-page',
          builder: (context, state) => BankAccountDetailPage(
            userAccountBankDocument: state.extra as UserAccountBankDocument,
          ),
        ),
      ],
      initialLocation: '/login',
    );
