
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/threads_request.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/providers/contact_us/create_question_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/navigation_card.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'widgets/contact_us_form.dart';
import 'widgets/contact_us_header.dart';

class ContactUsPage extends ConsumerStatefulWidget {
  const ContactUsPage({super.key});

  @override
  ConsumerState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends ConsumerState<ContactUsPage> {
  final TextEditingController threadContentController = TextEditingController();

  @override
  void dispose() {
    threadContentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userData = ref.watch(userDataProvider);
    final postQuestionData = ref.watch(createQuestionProvider);

    // Show error messages for failed operations
    ref.listen(
      userDataProvider,
      (_, state) => state.showSnackbarOnError(context),
    );

    ref.listen(
      createQuestionProvider,
      (_, state) => state.showSnackbarOnError(context),
    );

    // Reset text field on successful submission
    ref.listen(createQuestionProvider, (previous, next) {
      if (next.hasValue && next.value != null) {
        setState(() {
          threadContentController.clear();
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Pertanyaan berhasil dikirim')),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hubungi Kami'),
        elevation: 0,
      ),
      body: SafeArea(
        child: postQuestionData.isLoading
            ? Container(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: LoadingAnimationWidget.inkDrop(
                    color: Colors.amber,
                    size: 50,
                  ),
                ),
              )
            : SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header Section
                    const ContactUsHeader(),

                    const SizedBox(height: 24),

                    // Form Section
                    ContactUsForm(
                      controller: threadContentController,
                      onSubmit: () => _showSubmitDialog(context, ref, userData),
                      isLoading: postQuestionData.isLoading,
                    ),

                    const SizedBox(height: 32),

                    // Navigation Section
                    const Text(
                      'Lihat Pertanyaan',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 16),

                    Row(
                      children: [
                        NavigationCard(
                          title: 'Pertanyaan Lain',
                          icon: Icons.question_answer_outlined,
                          color: Colors.green,
                          onTap: () => ref.read(routerProvider).pushNamed('list_all_question'),
                        ),
                        const SizedBox(width: 12),
                        NavigationCard(
                          title: 'Pertanyaan Saya',
                          icon: Icons.person_outline,
                          color: Colors.orange,
                          onTap: () => ref.read(routerProvider).pushNamed('list_user_question'),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
      ),
    );
  }

  void _showSubmitDialog(BuildContext context, WidgetRef ref, AsyncValue userData) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text(
            'Kirim Pertanyaan',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: const Text(
            'Apakah Anda yakin ingin mengirim pertanyaan ini?',
            style: TextStyle(height: 1.5),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: Text(
                'Batal',
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final threadsRequest = ThreadsRequest(
                  isAnswer: false,
                  isDeleted: false,
                  isEdited: false,
                  isOpen: true,
                  isQuestion: true,
                  threadContent: threadContentController.text.trim(),
                  userId: userData.valueOrNull?.authKey,
                  username: userData.valueOrNull?.name,
                );

                ref.read(createQuestionProvider.notifier).postQuestion(
                  threadsRequest: threadsRequest,
                );

                Navigator.of(dialogContext).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade600,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: const Text('Kirim'),
            ),
          ],
        );
      },
    );
  }


}
