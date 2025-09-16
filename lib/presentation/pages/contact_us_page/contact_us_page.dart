import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/threads_request.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/providers/contact_us/create_question_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/global_loading_widget.dart';
import 'package:ika_smansara/presentation/widgets/navigation_card.dart';

import 'widgets/contact_us_form.dart';
import 'widgets/contact_us_header.dart';

class ContactUsPage extends ConsumerWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

    // Handle successful submission
    ref.listen(createQuestionProvider, (previous, next) {
      if (next.hasValue && next.value != null) {
        final isAdmin = userData.valueOrNull?.isAdmin ?? false;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(isAdmin
                ? 'Jawaban berhasil dikirim'
                : 'Pertanyaan berhasil dikirim'),
          ),
        );
      }
    });

    final isAdmin = userData.valueOrNull?.isAdmin ?? false;

    return Scaffold(
      appBar: AppBar(
        title: Text(isAdmin ? 'Forum Diskusi' : 'Hubungi Kami'),
        elevation: 0,
      ),
      body: SafeArea(
        child: postQuestionData.isLoading
            ? const GlobalLoadingWidget(
                color: Colors.amber,
              )
            : SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header Section
                    const ContactUsHeader(),

                    const SizedBox(height: 24),

                    // Form Section
                    ContactUsForm(
                      onSubmit: (content) =>
                          _showSubmitDialog(context, ref, userData, content),
                      isLoading: postQuestionData.isLoading,
                    ),

                    const SizedBox(height: 32),

                    // Navigation Section
                    Text(
                      isAdmin ? 'Kelola Pertanyaan' : 'Lihat Pertanyaan',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 16),

                    Row(
                      children: [
                        NavigationCard(
                          title:
                              isAdmin ? 'Semua Pertanyaan' : 'Pertanyaan Lain',
                          icon: Icons.question_answer_outlined,
                          color: Colors.green,
                          onTap: () => ref
                              .read(routerProvider)
                              .pushNamed('list_all_question'),
                        ),
                        const SizedBox(width: 12),
                        NavigationCard(
                          title: 'Pertanyaan Saya',
                          icon: Icons.person_outline,
                          color: Colors.orange,
                          onTap: () => ref
                              .read(routerProvider)
                              .pushNamed('list_user_question'),
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

  void _showSubmitDialog(BuildContext context, WidgetRef ref,
      AsyncValue userData, String content) {
    final isAdmin = userData.valueOrNull?.isAdmin ?? false;

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: Text(
            isAdmin ? 'Kirim Jawaban' : 'Kirim Pertanyaan',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            isAdmin
                ? 'Apakah Anda yakin ingin mengirim jawaban ini?'
                : 'Apakah Anda yakin ingin mengirim pertanyaan ini?',
            style: const TextStyle(height: 1.5),
          ),
          actions: [
            TextButton(
              onPressed: () =>
                  Navigator.of(context).pop(), // Use parent context
              child: Text(
                'Batal',
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final threadsRequest = ThreadsRequest(
                  isAnswer: false,
                  isDeleted: false,
                  isEdited: false,
                  isOpen: true,
                  isQuestion: true,
                  threadContent: content,
                  userId: userData.valueOrNull?.authKey,
                  username: userData.valueOrNull?.name,
                );

                // Close dialog first
                Navigator.of(context).pop();

                // Then submit
                await Future.delayed(
                    const Duration(milliseconds: 100)); // Small delay
                if (context.mounted) {
                  ref.read(createQuestionProvider.notifier).postQuestion(
                        threadsRequest: threadsRequest,
                      );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade600,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Text(isAdmin ? 'Kirim Jawaban' : 'Kirim'),
            ),
          ],
        );
      },
    );
  }
}
