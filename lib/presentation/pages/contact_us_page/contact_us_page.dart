import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/threads_request.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/providers/contact_us/create_question_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ContactUsPage extends ConsumerStatefulWidget {
  const ContactUsPage({super.key});

  @override
  ConsumerState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends ConsumerState<ContactUsPage> {
  final TextEditingController threadContentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var userData = ref.watch(userDataProvider);
    var postQuestionData = ref.watch(createQuestionProvider);

    // show error text if get user data error
    ref.listen(
      userDataProvider,
      (_, state) => state.showSnackbarOnError(
        context,
      ),
    );

    // show error text if failed post question
    ref.listen(
      createQuestionProvider,
      (_, state) {
        state.showSnackbarOnError(context);
      },
    );

    // reset text field content and open question detail page, if success post question
    if (postQuestionData.asData != null) {
      setState(() {
        threadContentController.text = '';
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText('Hubungi Kami'),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    AutoSizeText(
                      'Silahkan ajukan pertanyaan anda terkait aplikasi IKA SMANSARA',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpace(24),
                    SizedBox(
                      height: 250,
                      child: CustomTextField(
                        labelText: 'Tulis pertanyaan disini',
                        controller: threadContentController,
                        expands: true,
                        maxLines: null,
                        textAlignVertical: TextAlignVertical.top,
                      ),
                    ),
                    verticalSpace(24),
                    ElevatedButton(
                      onPressed: () {
                        context.displayAlertDialog(
                          title: 'Kirim Pertanyaan',
                          content: 'Yakin untuk mengirim pertanyaan ?',
                          positiveButtonText: 'Kirim',
                          onPositivePressed: () {
                            var threadsRequest = ThreadsRequest(
                              isAnswer: false,
                              isDeleted: false,
                              isEdited: false,
                              isOpen: true,
                              isQuestion: true,
                              threadContent:
                                  threadContentController.text.trim(),
                              userId: userData.valueOrNull?.authKey,
                              username: userData.valueOrNull?.name,
                            );

                            ref
                                .read(createQuestionProvider.notifier)
                                .postQuestion(
                                  threadsRequest: threadsRequest,
                                );

                            Navigator.pop(context);
                          },
                        );
                      },
                      child: AutoSizeText('Kirim Pertanyaan'),
                    ),
                    verticalSpace(32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AutoSizeText(
                          'Daftar Pertanyaan Lain',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ).onClick(() {
                          ref.read(routerProvider).pushNamed(
                                'list_all_question',
                              );
                        }),
                        AutoSizeText(
                          'Daftar Pertanyaan Saya',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ).onClick(() {
                          ref.read(routerProvider).pushNamed(
                                'list_user_question',
                              );
                        }),
                      ],
                    ),
                    verticalSpace(16),
                  ],
                ),
              ),
            ],
          ),
          Visibility(
            visible: postQuestionData.isLoading,
            child: Container(
              color: Colors.white,
              height: double.infinity,
              child: Center(
                child: LoadingAnimationWidget.inkDrop(
                  color: Colors.amber,
                  size: 50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
