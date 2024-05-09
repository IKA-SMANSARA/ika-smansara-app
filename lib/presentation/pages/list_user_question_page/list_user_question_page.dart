import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/providers/contact_us/get_list_user_question_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/horizontal_question_card.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ListUserQuestionPage extends ConsumerWidget {
  const ListUserQuestionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var userData = ref.watch(userDataProvider);
    var listUserQuestionData = ref.watch(
      getListUserQuestionProvider(
        userId: userData.valueOrNull?.authKey ?? '',
      ),
    );

    // show error information if failed get user data
    ref.listen(
      userDataProvider,
      (_, state) => state.showSnackbarOnError(
        context,
      ),
    );

    // show error information if failed get list user question
    ref.listen(
      getListUserQuestionProvider(
        userId: userData.valueOrNull?.authKey ?? '',
      ),
      (_, state) => state.showSnackbarOnError(
        context,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Pertanyaan Saya',
        ),
      ),
      body: listUserQuestionData.isLoading
          ? Container(
              child: Center(
                child: LoadingAnimationWidget.inkDrop(
                  color: Colors.amber,
                  size: 50,
                ),
              ),
            )
          : listUserQuestionData.whenOrNull(
              data: (data) => data?.length != 0
                  ? ListView.builder(
                      itemCount: data?.length,
                      itemBuilder: (context, index) {
                        return HorizontalQuestionCard(
                          content: data?[index].threadContent ?? '',
                          editedStatus: data?[index].isEdited ?? false,
                          postDate: data?[index].updatedAt ?? '',
                          questionStatus: data?[index].isOpen ?? false,
                          username: data?[index].username ?? '',
                          isLongContent: false,
                        ).onClick(
                          () => ref.read(routerProvider).pushNamed(
                                'get_question_detail',
                                extra: data?[index].id,
                              ),
                        );
                      },
                    )
                  : Container(
                      child: Center(
                        child: AutoSizeText('Belum ada pertanyaan'),
                      ),
                    ),
              error: (error, stackTrace) => Container(
                child: Center(
                  child: AutoSizeText('NO NETWORK'),
                ),
              ),
              loading: () => Container(
                child: Center(
                  child: LoadingAnimationWidget.inkDrop(
                    color: Colors.amber,
                    size: 50,
                  ),
                ),
              ),
            ),
    );
  }
}
