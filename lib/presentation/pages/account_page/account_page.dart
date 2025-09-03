import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/pages/account_page/widgets/admin_account_view.dart';
import 'package:ika_smansara/presentation/pages/account_page/widgets/user_account_view.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
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

  void _showTutorialDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tutorial Penggunaan',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF104993),
                          ),
                    ),
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(Icons.close),
                      color: Colors.grey,
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Video Player
                Container(
                  constraints: const BoxConstraints(
                    maxWidth: 400,
                    maxHeight: 300,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[200],
                  ),
                  child: _videoPlayerController.value.isInitialized
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: AspectRatio(
                            aspectRatio: _videoPlayerController.value.aspectRatio,
                            child: VideoPlayer(_videoPlayerController),
                          ),
                        )
                      : const Center(
                          child: CircularProgressIndicator(),
                        ),
                ),

                const SizedBox(height: 16),

                // Description
                Text(
                  'Pelajari cara menggunakan aplikasi IKA Smansara untuk mendukung kampanye sosial.',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey[600],
                        height: 1.5,
                      ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
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
              loading: () => Center(
                child: LoadingAnimationWidget.inkDrop(
                  color: const Color(0xFFD52014),
                  size: 50,
                ),
              ),
              error: (error, stack) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error_outline,
                      size: 64,
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Terjadi kesalahan saat memuat data',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => ref.invalidate(userDataProvider),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD52014),
                      ),
                      child: const Text('Coba Lagi'),
                    ),
                  ],
                ),
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
                        onShowTutorial: _showTutorialDialog,
                      );
              },
            ),
          ),
        );
      },
    );
  }
}

