import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/threads_request.dart';
import 'package:ika_smansara/presentation/providers/contact_us/create_answer_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';

class AnswerInputSection extends StatefulWidget {
  final TextEditingController responseController;
  final dynamic questionData;
  final dynamic userData;
  final WidgetRef ref;
  final String threadId;

  const AnswerInputSection({
    super.key,
    required this.responseController,
    required this.questionData,
    required this.userData,
    required this.ref,
    required this.threadId,
  });

  @override
  State<AnswerInputSection> createState() => _AnswerInputSectionState();
}

class _AnswerInputSectionState extends State<AnswerInputSection> {
  bool _isTextEmpty = true;

  @override
  void initState() {
    super.initState();
    // Listen to text changes
    widget.responseController.addListener(_onTextChanged);
    // Check initial state
    _onTextChanged();
  }

  @override
  void dispose() {
    widget.responseController.removeListener(_onTextChanged);
    super.dispose();
  }

  void _onTextChanged() {
    final isEmpty = widget.responseController.text.trim().isEmpty;
    if (isEmpty != _isTextEmpty) {
      setState(() {
        _isTextEmpty = isEmpty;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.userData?.isAdmin ?? false
                ? 'Berikan Jawaban'
                : 'Tambahkan Komentar',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 120,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: CustomTextField(
              labelText: widget.userData?.isAdmin ?? false
                  ? 'Tulis jawaban Anda di sini...'
                  : 'Tambahkan komentar Anda di sini...',
              expands: true,
              maxLines: null,
              textAlignVertical: TextAlignVertical.top,
              controller: widget.responseController,
            ),
          ),
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: _isTextEmpty
                  ? null
                  : () {
                      showDialog(
                        context: context,
                        builder: (BuildContext dialogContext) {
                          return AlertDialog(
                            title: Text(widget.userData?.isAdmin ?? false
                                ? 'Kirim Jawaban'
                                : 'Kirim Komentar'),
                            content: Text(widget.userData?.isAdmin ?? false
                                ? 'Yakin untuk mengirim jawaban?'
                                : 'Yakin untuk mengirim komentar?'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.of(dialogContext).pop(),
                                child: const Text('Batal'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  var threadsRequest = ThreadsRequest(
                                    isAnswer: true,
                                    isDeleted: false,
                                    isEdited: false,
                                    isOpen: false,
                                    isQuestion: false,
                                    threadContent:
                                        widget.responseController.text.trim(),
                                    userId: widget.userData?.authKey,
                                    username: widget.userData?.name,
                                    replyingThreadId: widget.threadId,
                                  );

                                  widget.ref
                                      .read(createAnswerProvider.notifier)
                                      .postAnswer(
                                        threadsRequest: threadsRequest,
                                        questionId: widget.threadId,
                                      );

                                  Navigator.of(dialogContext).pop();
                                },
                                child: const Text('Kirim'),
                              ),
                            ],
                          );
                        },
                      );
                    },
              style: ElevatedButton.styleFrom(
                backgroundColor: widget.userData?.isAdmin ?? false
                    ? Colors.green
                    : Colors.blue,
                disabledBackgroundColor: Colors.grey.shade300,
              ),
              child: Text(
                widget.userData?.isAdmin ?? false
                    ? 'Kirim Jawaban'
                    : 'Kirim Komentar',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

