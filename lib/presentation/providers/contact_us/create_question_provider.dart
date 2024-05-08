import 'package:flutter/foundation.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/threads_document.dart';
import 'package:ika_smansara/domain/entities/threads_request.dart';
import 'package:ika_smansara/domain/usecases/create_question_to_admin/create_question_to_admin.dart';
import 'package:ika_smansara/domain/usecases/create_question_to_admin/create_question_to_admin_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/create_question_to_admin_use_case_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_question_provider.g.dart';

@riverpod
class CreateQuestion extends _$CreateQuestion {
  @override
  Future<ThreadsDocument?> build() async => null;

  Future<void> postQuestion({
    required ThreadsRequest threadsRequest,
  }) async {
    state = AsyncValue.loading();

    CreateQuestionToAdmin createQuestionToAdmin = ref.read(
      createQuestionToAdminUseCaseProvider,
    );

    var result = await createQuestionToAdmin(
      CreateQuestionToAdminParams(
        threadsRequest: threadsRequest,
      ),
    );

    Constants.logger.d(result.resultValue);

    switch (result) {
      case Success(value: final data):
        state = AsyncData(data);
      case Failed(:final message):
        state = AsyncError(
          FlutterError(message),
          StackTrace.current,
        );
        state = const AsyncData(null);
    }
  }
}
