// ignore_for_file: unused_result

import 'package:flutter/material.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/threads_document.dart';
import 'package:ika_smansara/domain/entities/threads_request.dart';
import 'package:ika_smansara/domain/usecases/update_thread/update_thread.dart';
import 'package:ika_smansara/domain/usecases/update_thread/update_thread_params.dart';
import 'package:ika_smansara/presentation/providers/contact_us/get_list_all_question_provider.dart';
import 'package:ika_smansara/presentation/providers/contact_us/get_list_answer_provider.dart';
import 'package:ika_smansara/presentation/providers/contact_us/get_list_user_question_provider.dart';
import 'package:ika_smansara/presentation/providers/contact_us/get_user_question_detail_provider.dart';

import 'package:ika_smansara/presentation/providers/usecase/update_thread_use_case_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_thread_provider.g.dart';

@riverpod
class UpdateUserThread extends _$UpdateUserThread {
  @override
  Future<ThreadsDocument?> build() async => null;

  Future<void> closeThread({
    required ThreadsRequest threadsRequest,
  }) async {
    print('CloseThread called with threadId: ${threadsRequest.id}, isQuestion: ${threadsRequest.isQuestion}');
    state = AsyncValue.loading();

    UpdateThread updateThread = ref.read(updateThreadUseCaseProvider);

    var result = await updateThread(
      UpdateThreadParams(
        threadRequest: threadsRequest,
      ),
    );

    Constants.logger.d(result.resultValue);

    switch (result) {
      case Success(value: final data):
        print('CloseThread: Success - updating state and refreshing providers');
        state = AsyncData(data);

        // Add a small delay to ensure the backend update is processed
        await Future.delayed(const Duration(milliseconds: 500));

        // Use invalidate for more aggressive refresh
        ref.invalidate(getUserQuestionDetailProvider(threadId: threadsRequest.id ?? ''));
        // Refresh answers list for the same thread
        ref.invalidate(getListAnswerProvider(threadId: threadsRequest.id ?? ''));
        var userData = ref.read(userDataProvider);
        ref.invalidate(getListAllQuestionProvider);
        ref.invalidate(getListUserQuestionProvider(userId: userData.valueOrNull?.authKey ?? ''));

        // Reset state to null after successful operation
        state = const AsyncData(null);
      case Failed(:final message):
        print('CloseThread: Failed - ${message}');
        state = AsyncError(
          FlutterError(message),
          StackTrace.current,
        );
        // Reset state after error
        Future.delayed(const Duration(seconds: 2), () {
          state = const AsyncData(null);
        });
    }
  }

  Future<void> postUpdateThread({
    required ThreadsRequest threadsRequest,
  }) async {
    print('PostUpdateThread called with threadId: ${threadsRequest.id}, isQuestion: ${threadsRequest.isQuestion}');
    state = AsyncValue.loading();

    UpdateThread updateThread = ref.read(updateThreadUseCaseProvider);

    var result = await updateThread(
      UpdateThreadParams(
        threadRequest: threadsRequest,
      ),
    );

    Constants.logger.d(result.resultValue);

    switch (result) {
      case Success(value: final data):
        print('PostUpdateThread: Success - updating state and refreshing providers');
        state = AsyncData(data);

        // Add a small delay to ensure the backend update is processed
        await Future.delayed(const Duration(milliseconds: 500));

        // Use invalidate for more aggressive refresh
        ref.invalidate(getUserQuestionDetailProvider(threadId: threadsRequest.id ?? ''));
        // Refresh answers list for the same thread
        ref.invalidate(getListAnswerProvider(threadId: threadsRequest.id ?? ''));
        var userData = ref.read(userDataProvider);
        ref.invalidate(getListAllQuestionProvider);
        ref.invalidate(getListUserQuestionProvider(userId: userData.valueOrNull?.authKey ?? ''));

        // Reset state to null after successful operation
        state = const AsyncData(null);
      case Failed(:final message):
        print('PostUpdateThread: Failed - ${message}');
        state = AsyncError(
          FlutterError(message),
          StackTrace.current,
        );
        // Reset state after error
        Future.delayed(const Duration(seconds: 2), () {
          state = const AsyncData(null);
        });
    }
  }
}
