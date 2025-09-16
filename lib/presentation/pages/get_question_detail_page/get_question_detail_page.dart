import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/providers/contact_us/create_answer_provider.dart';
import 'package:ika_smansara/presentation/providers/contact_us/get_list_answer_provider.dart';
import 'package:ika_smansara/presentation/providers/contact_us/get_user_question_detail_provider.dart';
import 'package:ika_smansara/presentation/providers/contact_us/update_thread_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';

import 'widgets/answers_section.dart';
import 'widgets/question_section.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class GetQuestionDetailPage extends ConsumerStatefulWidget {
  final String threadId;

  const GetQuestionDetailPage({
    super.key,
    required this.threadId,
  });

  @override
  ConsumerState<GetQuestionDetailPage> createState() =>
      _GetQuestionDetailPageState();
}

class _GetQuestionDetailPageState extends ConsumerState<GetQuestionDetailPage> {
  final TextEditingController responseTextController = TextEditingController();
  final TextEditingController questionTextController = TextEditingController();

  // Add refresh counter to force UI rebuild
  int _refreshCounter = 0;

  @override
  void dispose() {
    responseTextController.dispose();
    questionTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userData = ref.watch(userDataProvider);
    final listAnswerData = ref.watch(
      getListAnswerProvider(threadId: widget.threadId),
    );
    final questionDetailData = ref.watch(
      getUserQuestionDetailProvider(threadId: widget.threadId),
    );

    // Listen for update thread provider changes to auto refresh UI
    ref.listen(updateUserThreadProvider, (previous, next) {
      // Debug logging
      print('UpdateThreadProvider listener triggered: ${next}');
      if (next.isLoading) {
        print('UpdateThreadProvider: Loading state detected');
      } else if (next.hasValue && next.value != null) {
        print('UpdateThreadProvider: Success detected, refreshing UI');
        // Force UI rebuild by updating local state
        setState(() {
          _refreshCounter++;
        });

        // Also invalidate providers for fresh data
        ref.invalidate(getUserQuestionDetailProvider(threadId: widget.threadId));
        ref.invalidate(getListAnswerProvider(threadId: widget.threadId));

        // Show success message
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Perubahan berhasil disimpan')),
        );
      } else if (next.hasError) {
        print('UpdateThreadProvider: Error detected - ${next.error}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${next.error}')),
        );
      } else {
        print('UpdateThreadProvider: No value or error - state reset');
      }
    });

    // Listen for create answer provider changes to refresh answers list
    ref.listen(createAnswerProvider, (previous, next) {
      if (next.isLoading) {
        print('CreateAnswerProvider: Loading state detected');
      } else if (next.hasValue && next.value != null) {
        print('CreateAnswerProvider: Success detected, refreshing answers');
        // Force UI rebuild by updating local state
        setState(() {
          _refreshCounter++;
        });
        // Clear the input field
        responseTextController.clear();
        // Also invalidate provider to ensure fresh data
        ref.invalidate(getListAnswerProvider(threadId: widget.threadId));

        // Show success message
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Jawaban berhasil dikirim')),
        );
      } else if (next.hasError) {
        print('CreateAnswerProvider: Error detected - ${next.error}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${next.error}')),
        );
      }
    });

    // Show error messages for failed operations
    ref.listen(
      getUserQuestionDetailProvider(threadId: widget.threadId),
      (_, state) => state.showSnackbarOnError(context),
    );

    ref.listen(
      getListAnswerProvider(threadId: widget.threadId),
      (_, state) => state.showSnackbarOnError(context),
    );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText('Detail Pertanyaan'),
      ),
      body: questionDetailData.isLoading
          ? Container(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: LoadingAnimationWidget.inkDrop(
                  color: Colors.amber,
                  size: 50,
                ),
              ),
            )
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                QuestionSection(
                  key: ValueKey('question_${_refreshCounter}'),
                  questionData: questionDetailData.valueOrNull,
                  userData: userData.valueOrNull,
                  questionController: questionTextController,
                  ref: ref,
                ),
                verticalSpace(24),
                AnswersSection(
                  key: ValueKey('answers_${_refreshCounter}'),
                  listAnswerData: listAnswerData,
                  userData: userData.valueOrNull,
                  responseController: responseTextController,
                  questionData: questionDetailData.valueOrNull,
                  ref: ref,
                  threadId: widget.threadId,
                ),
              ],
            ),
    );
  }
}