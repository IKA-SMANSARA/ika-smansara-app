import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/pages/account_page/widgets/admin_account_view.dart';
import 'package:ika_smansara/presentation/pages/account_page/widgets/user_account_view.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/global_error_widget.dart';
import 'package:ika_smansara/presentation/widgets/global_loading_widget.dart';
import 'package:video_player/video_player.dart';

class AccountPage extends ConsumerStatefulWidget {
  const AccountPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AccountPageState();
}

class _AccountPageState extends ConsumerState<AccountPage> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(
      'assets/images/tutorial.mp4',
    )..initialize().then((_) {
        _videoPlayerController.play();
      });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  void _navigateToVideoTutorial() {
    ref.read(routerProvider).pushNamed('video-tutorial-page');
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final asyncUserData = ref.watch(userDataProvider);

        // Show error messages
        ref.listen(
          userDataProvider,
          (_, state) => state.showSnackbarOnError(context),
        );

        return Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF104993),
                    Color(0xFF1a5fb4),
                  ],
                ),
              ),
            ),
            foregroundColor: Colors.white,
            elevation: 0,
          ),
          body: SafeArea(
            child: asyncUserData.when(
              loading: () => const GlobalLoadingWidget(
                color: Color(0xFFD52014),
              ),
              error: (error, stack) => GlobalErrorWidget(
                onRetry: () => ref.invalidate(userDataProvider),
              ),
              data: (userData) {
                if (userData == null) {
                  return const Center(
                    child: Text('Silakan login untuk melihat akun Anda'),
                  );
                }

                final isAdmin = userData.isAdmin ?? false;

                return isAdmin
                    ? AdminAccountView(userData: userData)
                    : UserAccountView(
                        userData: userData,
                        onShowTutorial: _navigateToVideoTutorial,
                      );
              },
            ),
          ),
        );
      },
    );
  }
}
