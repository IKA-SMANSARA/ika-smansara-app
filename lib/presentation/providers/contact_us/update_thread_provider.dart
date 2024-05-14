import 'package:flutter/material.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/threads_document.dart';
import 'package:ika_smansara/domain/entities/threads_request.dart';
import 'package:ika_smansara/domain/usecases/update_thread/update_thread.dart';
import 'package:ika_smansara/domain/usecases/update_thread/update_thread_params.dart';
import 'package:ika_smansara/presentation/providers/contact_us/get_list_all_question_provider.dart';
import 'package:ika_smansara/presentation/providers/contact_us/get_list_user_question_provider.dart';
import 'package:ika_smansara/presentation/providers/contact_us/get_user_question_detail_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
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
        state = AsyncData(data);
        ref.refresh(
          getUserQuestionDetailProvider(
            threadId: threadsRequest.id ?? '',
          ),
        );
        var userData = ref.read(userDataProvider);
        ref.refresh(getListAllQuestionProvider);
        ref.refresh(
          getListUserQuestionProvider(
            userId: userData.valueOrNull?.authKey ?? '',
          ),
        );
      case Failed(:final message):
        state = AsyncError(
          FlutterError(message),
          StackTrace.current,
        );
        state = const AsyncData(null);
    }
  }

  Future<void> postUpdateThread({
    required ThreadsRequest threadsRequest,
  }) async {
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
        state = AsyncData(data);
        ref.refresh(
          getUserQuestionDetailProvider(
            threadId: threadsRequest.id ?? '',
          ),
        );
        var userData = ref.read(userDataProvider);
        ref.refresh(getListAllQuestionProvider);
        ref.refresh(
          getListUserQuestionProvider(
            userId: userData.valueOrNull?.authKey ?? '',
          ),
        );
        ref.read(routerProvider).pop();
      case Failed(:final message):
        state = AsyncError(
          FlutterError(message),
          StackTrace.current,
        );
        state = const AsyncData(null);
    }
  }
}
