import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/threads_request.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/providers/contact_us/create_answer_provider.dart';
import 'package:ika_smansara/presentation/providers/contact_us/get_list_answer_provider.dart';
import 'package:ika_smansara/presentation/providers/contact_us/get_user_question_detail_provider.dart';
import 'package:ika_smansara/presentation/providers/contact_us/update_thread_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';
import 'package:ika_smansara/presentation/widgets/horizontal_question_card.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class GetQuestionDetailPage extends ConsumerStatefulWidget {
  final String threadId;

  const GetQuestionDetailPage({
    super.key,
    required this.threadId,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GetQuestionDetailPageState();
}

class _GetQuestionDetailPageState extends ConsumerState<GetQuestionDetailPage> {
  final TextEditingController responseTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var userData = ref.watch(userDataProvider);
    var postAnswerData = ref.watch(createAnswerProvider);

    var listAnswerData = ref.watch(
      getListAnswerProvider(
        threadId: widget.threadId,
      ),
    );

    var questionDetailData = ref.watch(
      getUserQuestionDetailProvider(
        threadId: widget.threadId,
      ),
    );

    // reset text field content and open question detail page, if success post question
    if (postAnswerData.asData != null) {
      setState(() {
        responseTextController.text = '';
      });
    }

    // show error text if failed get question
    ref.listen(
      getUserQuestionDetailProvider(threadId: widget.threadId),
      (_, state) {
        state.showSnackbarOnError(context);
      },
    );

    // show error text if failed get answers
    ref.listen(
      getUserQuestionDetailProvider(threadId: widget.threadId),
      (_, state) {
        state.showSnackbarOnError(context);
      },
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
                HorizontalQuestionCard(
                  isAnswer: questionDetailData.valueOrNull?.isAnswer ?? false,
                  content: questionDetailData.valueOrNull?.threadContent ?? '',
                  editedStatus:
                      questionDetailData.valueOrNull?.isEdited ?? false,
                  postDate: questionDetailData.valueOrNull?.updatedAt ?? '',
                  questionStatus:
                      questionDetailData.valueOrNull?.isOpen ?? false,
                  username: questionDetailData.valueOrNull?.username ?? '',
                  isLongContent: true,
                ),
                verticalSpace(32),
                ...(listAnswerData.whenOrNull(
                      data: (data) {
                        if (data == []) {
                          return [
                            Column(
                              children: [
                                AutoSizeText('Belum ada Jawaban'),
                              ],
                            ),
                          ];
                        } else {
                          return data?.map(
                            (answer) => HorizontalQuestionCard(
                              username: answer.username ?? ''.toUpperCase(),
                              questionStatus: answer.isQuestion ?? false,
                              editedStatus: answer.isEdited ?? false,
                              postDate: answer.updatedAt ?? '',
                              content: answer.threadContent ?? '',
                              isLongContent: true,
                              isAnswer: answer.isAnswer ?? false,
                            ),
                          );
                        }
                      },
                      error: (error, stackTrace) => [
                        AutoSizeText('Network Error'),
                      ],
                      loading: () => [
                        Container(
                          padding: const EdgeInsets.all(16),
                          child: Center(
                            child: LoadingAnimationWidget.inkDrop(
                              color: Colors.amber,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ) ??
                    [
                      AutoSizeText('Belum ada Jawaban'),
                    ]),
                verticalSpace(32),
                Visibility(
                  visible: (questionDetailData.valueOrNull?.isOpen == true) &&
                      (userData.valueOrNull?.isAdmin ==
                          true),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 250,
                        child: CustomTextField(
                          labelText: 'Tulis Jawaban Disini',
                          expands: true,
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          controller: responseTextController,
                        ),
                      ),
                      verticalSpace(16),
                      ElevatedButton(
                        onPressed: () {
                          context.displayAlertDialog(
                            title: 'Kirim Jawaban',
                            content: 'Yakin untuk mengirim jawaban ?',
                            positiveButtonText: 'Kirim',
                            onPositivePressed: () {
                              var threadsRequest = ThreadsRequest(
                                isAnswer: true,
                                isDeleted: false,
                                isEdited: false,
                                isOpen: false,
                                isQuestion: false,
                                threadContent:
                                    responseTextController.text.trim(),
                                userId: userData.valueOrNull?.authKey,
                                username: userData.valueOrNull?.name,
                                replyingThreadId: widget.threadId,
                              );

                              ref
                                  .read(createAnswerProvider.notifier)
                                  .postAnswer(
                                    threadsRequest: threadsRequest,
                                    questionId: widget.threadId,
                                  );

                              Navigator.pop(context);
                            },
                          );
                        },
                        child: AutoSizeText(
                          'Kirim Jawaban',
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(32),
                Visibility(
                  visible: questionDetailData.valueOrNull?.isOpen == true &&
                      (questionDetailData.valueOrNull?.userId ==
                          userData.valueOrNull?.authKey),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF28A262),
                        ),
                        child: AutoSizeText(
                          'Ubah Pertanyaan',
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context.displayAlertDialog(
                            title: 'Tutup Pertanyaan',
                            content: 'Apakah pertanyaan anda terjawab ?',
                            positiveButtonText: 'Ya',
                            onPositivePressed: () {
                              var threadsRequest = ThreadsRequest(
                                id: questionDetailData.valueOrNull?.id,
                                isAnswer:
                                    questionDetailData.valueOrNull?.isAnswer,
                                isDeleted:
                                    questionDetailData.valueOrNull?.isDeleted,
                                isEdited:
                                    questionDetailData.valueOrNull?.isEdited,
                                isOpen: false,
                                isQuestion:
                                    questionDetailData.valueOrNull?.isQuestion,
                                threadContent: questionDetailData
                                    .valueOrNull?.threadContent,
                                userId: questionDetailData.valueOrNull?.userId,
                                username:
                                    questionDetailData.valueOrNull?.username,
                                replyingThreadId: questionDetailData
                                    .valueOrNull?.replyingThreadId,
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
                          backgroundColor: const Color(0xFFEE5858),
                        ),
                        child: AutoSizeText(
                          'Tutup Pertanyaan',
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(16),
              ],
            ),
    );
  }
}
