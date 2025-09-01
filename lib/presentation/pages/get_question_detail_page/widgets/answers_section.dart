import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/threads_request.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/providers/contact_us/update_thread_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'answer_input_section.dart';

class AnswersSection extends StatelessWidget {
  final AsyncValue listAnswerData;
  final dynamic userData;
  final TextEditingController responseController;
  final dynamic questionData;
  final WidgetRef ref;
  final String threadId;

  const AnswersSection({
    super.key,
    required this.listAnswerData,
    required this.userData,
    required this.responseController,
    required this.questionData,
    required this.ref,
    required this.threadId,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Answers Header
        Row(
          children: [
            const Text(
              'Jawaban',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: listAnswerData.when(
                data: (data) {
                  final filteredCount = data?.where((answer) => !(answer.isDeleted ?? false)).length ?? 0;
                  return Text(
                    '$filteredCount',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
                loading: () => const SizedBox.shrink(),
                error: (_, __) => const SizedBox.shrink(),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),

        // Answers List and Input Section
        listAnswerData.when(
          data: (data) {
            // Filter out deleted answers
            final filteredData = data?.where((answer) => !(answer.isDeleted ?? false)).toList() ?? [];
            final answersList = filteredData.isEmpty
                ? [
                    Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.chat_bubble_outline,
                            size: 64,
                            color: Colors.grey.shade300,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Belum ada jawaban',
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Jawaban akan muncul di sini setelah admin atau pemilik pertanyaan menjawab',
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )
                  ]
                : filteredData.map<Widget>((answer) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade200),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Answer Header
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.green.shade100,
                                child: Text(
                                  (answer.username ?? 'A')[0].toUpperCase(),
                                  style: const TextStyle(
                                    color: Colors.green,
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
                                      answer.username ?? '',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      formatDate(answer.updatedAt ?? ''),
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Admin/Admin badge - only show if the answer author is the current logged-in admin
                              if (answer.userId == userData?.authKey && (userData?.isAdmin ?? false))
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: Colors.amber.shade100,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Text(
                                    'Admin',
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 12),

                          // Answer Content
                          Text(
                            answer.threadContent ?? '',
                            style: const TextStyle(
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),

                          // Edited indicator
                          if (answer.isEdited ?? false) ...[
                            const SizedBox(height: 8),
                            Text(
                              'Diedit',
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 10,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],

                          // Edit/Delete buttons for answer owner (di bawah konten)
                          if (answer.userId == userData?.authKey) ...[
                            const SizedBox(height: 12),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextButton(
                                  onPressed: () => _showEditAnswerDialog(context, answer),
                                  child: const Text(
                                    'Edit',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  style: TextButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    minimumSize: Size.zero,
                                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                TextButton(
                                  onPressed: () => _showDeleteAnswerDialog(context, answer),
                                  child: const Text(
                                    'Delete',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  style: TextButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    minimumSize: Size.zero,
                                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ],
                      ),
                    );
                  }).toList();

            // Add Answer Input Section for admin or question owner
            if ((questionData?.isOpen ?? false) &&
                ((userData?.isAdmin ?? false) ||
                 (questionData?.userId == userData?.authKey))) {
              answersList.add(
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: AnswerInputSection(
                    responseController: responseController,
                    questionData: questionData,
                    userData: userData,
                    ref: ref,
                    threadId: threadId,
                  ),
                ),
              );
            }

            return Column(children: answersList);
          },
          error: (error, stackTrace) => Column(
            children: [
              Container(
                padding: const EdgeInsets.all(32),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 48,
                      color: Colors.red.shade400,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Terjadi kesalahan saat memuat jawaban',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              // Still show input section even on error
              if ((questionData?.isOpen ?? false) &&
                  ((userData?.isAdmin ?? false) ||
                   (questionData?.userId == userData?.authKey)))
                Container(
                  margin: const EdgeInsets.only(top: 32),
                  child: AnswerInputSection(
                    responseController: responseController,
                    questionData: questionData,
                    userData: userData,
                    ref: ref,
                    threadId: threadId,
                  ),
                ),
            ],
          ),
          loading: () => Column(
            children: [
              Container(
                padding: const EdgeInsets.all(32),
                child: Center(
                  child: LoadingAnimationWidget.inkDrop(
                    color: Colors.amber,
                    size: 30,
                  ),
                ),
              ),
              // Still show input section while loading
              if ((questionData?.isOpen ?? false) &&
                  ((userData?.isAdmin ?? false) ||
                   (questionData?.userId == userData?.authKey)))
                Container(
                  margin: const EdgeInsets.only(top: 32),
                  child: AnswerInputSection(
                    responseController: responseController,
                    questionData: questionData,
                    userData: userData,
                    ref: ref,
                    threadId: threadId,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  void _showEditAnswerDialog(BuildContext context, dynamic answer) {
    final TextEditingController editController = TextEditingController(text: answer.threadContent ?? '');

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text(
          'Edit jawaban',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        content: SizedBox(
          width: double.maxFinite,
          child: CustomTextField(
            maxLines: 5,
            textAlignVertical: TextAlignVertical.top,
            labelText: 'Jawaban Anda...',
            controller: editController,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              'Batal',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          TextButton(
            onPressed: editController.text.trim().isEmpty
                ? null
                : () {
                    _updateAnswer(context, answer, editController.text.trim());
                    Navigator.of(context).pop();
                  },
            child: const Text(
              'Simpan',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showDeleteAnswerDialog(BuildContext context, dynamic answer) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text(
            'Hapus jawaban',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          content: const Text(
            'Jawaban ini akan dihapus secara permanen.',
            style: TextStyle(fontSize: 14),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: const Text(
                'Batal',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            TextButton(
              onPressed: () {
                _deleteAnswer(context, answer);
                Navigator.of(dialogContext).pop();
              },
              child: const Text(
                'Hapus',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _updateAnswer(BuildContext context, dynamic answer, String newContent) {
    final threadsRequest = ThreadsRequest(
      id: answer.id,
      isAnswer: answer.isAnswer,
      isDeleted: answer.isDeleted,
      isEdited: true, // Mark as edited
      isOpen: answer.isOpen,
      isQuestion: answer.isQuestion,
      threadContent: newContent,
      userId: answer.userId,
      username: answer.username,
      replyingThreadId: answer.replyingThreadId,
    );

    // Use existing update thread provider
    ref.read(updateUserThreadProvider.notifier).postUpdateThread(
      threadsRequest: threadsRequest,
    );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Jawaban berhasil diperbarui')),
    );
  }

  void _deleteAnswer(BuildContext context, dynamic answer) {
    final threadsRequest = ThreadsRequest(
      id: answer.id,
      isAnswer: answer.isAnswer,
      isDeleted: true, // Mark as deleted
      isEdited: answer.isEdited,
      isOpen: answer.isOpen,
      isQuestion: answer.isQuestion,
      threadContent: answer.threadContent,
      userId: answer.userId,
      username: answer.username,
      replyingThreadId: answer.replyingThreadId,
    );

    // Use existing update thread provider to mark as deleted
    ref.read(updateUserThreadProvider.notifier).postUpdateThread(
      threadsRequest: threadsRequest,
    );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Jawaban berhasil dihapus')),
    );
  }
}