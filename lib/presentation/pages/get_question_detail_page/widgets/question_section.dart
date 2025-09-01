import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/threads_request.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/providers/contact_us/update_thread_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';

// Extension untuk BuildContext.displayAlertDialog
extension AlertDialogExtension on BuildContext {
  Future<void> displayAlertDialog({
    required String title,
    required String content,
    required String positiveButtonText,
    required VoidCallback onPositivePressed,
  }) {
    return showDialog(
      context: this,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: const Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                onPositivePressed();
                Navigator.of(dialogContext).pop();
              },
              child: Text(positiveButtonText),
            ),
          ],
        );
      },
    );
  }
}

class QuestionSection extends StatelessWidget {
  final dynamic questionData;
  final dynamic userData;
  final TextEditingController questionController;
  final WidgetRef ref;

  const QuestionSection({
    super.key,
    required this.questionData,
    required this.userData,
    required this.questionController,
    required this.ref,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Question Header
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: Text(
                  (questionData?.username ?? 'U')[0].toUpperCase(),
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      questionData?.username ?? '',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      formatDate(questionData?.updatedAt ?? ''),
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              // Status Badge
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: (questionData?.isOpen ?? false)
                      ? Colors.green.shade100
                      : Colors.red.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  (questionData?.isOpen ?? false) ? 'Terbuka' : 'Ditutup',
                  style: TextStyle(
                    color: (questionData?.isOpen ?? false)
                        ? Colors.green.shade800
                        : Colors.red.shade800,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Question Content
          Text(
            questionData?.threadContent ?? '',
            style: const TextStyle(
              fontSize: 16,
              height: 1.5,
            ),
          ),

          // Edited indicator
          if (questionData?.isEdited ?? false) ...[
            const SizedBox(height: 8),
            Text(
              'Diedit',
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 12,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],

          // Question Owner Actions (seamless dengan card)
          if ((questionData?.isOpen ?? false) &&
              (questionData?.userId == userData?.authKey)) ...[
            Container(
              margin: const EdgeInsets.only(top: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                border: Border(
                  top: BorderSide(color: Colors.grey.shade200),
                  left: BorderSide(color: Colors.grey.shade200),
                  right: BorderSide(color: Colors.grey.shade200),
                  bottom: BorderSide(color: Colors.grey.shade200),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Kelola Pertanyaan',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            questionController.text = questionData?.threadContent ?? '';
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (_) => Dialog(
                                insetPadding: const EdgeInsets.all(16),
                                child: ListView(
                                  padding: const EdgeInsets.all(16),
                                  children: [
                                    const SizedBox(height: 16),
                                    const Text(
                                      'Ubah Pertanyaan',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    SizedBox(
                                      height: MediaQuery.of(context).size.height / 2,
                                      child: CustomTextField(
                                        maxLines: null,
                                        expands: true,
                                        textAlignVertical: TextAlignVertical.top,
                                        labelText: 'Tulis pertanyaan',
                                        controller: questionController,
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    ElevatedButton(
                                      onPressed: () {
                                        context.displayAlertDialog(
                                          title: 'Ubah Pertanyaan',
                                          content: 'Apakah anda yakin ingin mengubah pertanyaan?',
                                          positiveButtonText: 'Ya',
                                          onPositivePressed: () {
                                            var threadsRequest = ThreadsRequest(
                                              id: questionData?.id,
                                              isAnswer: questionData?.isAnswer,
                                              isDeleted: questionData?.isDeleted,
                                              isEdited: questionData?.isEdited,
                                              isOpen: questionData?.isOpen,
                                              isQuestion: questionData?.isQuestion,
                                              threadContent: questionController.text.trim(),
                                              userId: questionData?.userId,
                                              username: questionData?.username,
                                              replyingThreadId: questionData?.replyingThreadId,
                                            );

                                            ref
                                                .read(updateUserThreadProvider.notifier)
                                                .postUpdateThread(
                                                  threadsRequest: threadsRequest,
                                                );

                                            Navigator.pop(context);
                                          },
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue,
                                      ),
                                      child: const Text('Ubah Pertanyaan'),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          icon: const Icon(Icons.edit, size: 16),
                          label: const Text('Ubah'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                            textStyle: const TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            context.displayAlertDialog(
                              title: 'Tutup Pertanyaan',
                              content: 'Apakah pertanyaan anda sudah terjawab?',
                              positiveButtonText: 'Ya, Tutup',
                              onPositivePressed: () {
                                var threadsRequest = ThreadsRequest(
                                  id: questionData?.id,
                                  isAnswer: questionData?.isAnswer,
                                  isDeleted: questionData?.isDeleted,
                                  isEdited: questionData?.isEdited,
                                  isOpen: false,
                                  isQuestion: questionData?.isQuestion,
                                  threadContent: questionData?.threadContent,
                                  userId: questionData?.userId,
                                  username: questionData?.username,
                                  replyingThreadId: questionData?.replyingThreadId,
                                );

                                ref
                                    .read(updateUserThreadProvider.notifier)
                                    .closeThread(
                                      threadsRequest: threadsRequest,
                                    );

                                // Don't pop - let auto refresh handle UI updates
                              },
                            );
                          },
                          icon: const Icon(Icons.close, size: 16),
                          label: const Text('Tutup'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                            textStyle: const TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
