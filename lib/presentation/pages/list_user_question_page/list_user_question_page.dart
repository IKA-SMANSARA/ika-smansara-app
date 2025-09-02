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
    final userData = ref.watch(userDataProvider);
    final listUserQuestionData = ref.watch(
      getListUserQuestionProvider(
        userId: userData.valueOrNull?.authKey ?? '',
      ),
    );

    // Show error messages for failed operations
    ref.listen(
      userDataProvider,
      (_, state) => state.showSnackbarOnError(context),
    );

    ref.listen(
      getListUserQuestionProvider(
        userId: userData.valueOrNull?.authKey ?? '',
      ),
      (_, state) => state.showSnackbarOnError(context),
    );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText('Pertanyaan Saya'),
      ),
      body: listUserQuestionData.isLoading
          ? Container(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: LoadingAnimationWidget.inkDrop(
                  color: Colors.amber,
                  size: 50,
                ),
              ),
            )
          : listUserQuestionData.whenOrNull(
              data: (data) => data?.isNotEmpty == true
                  ? ListView.separated(
                      padding: const EdgeInsets.all(16),
                      separatorBuilder: (context, index) => verticalSpace(16),
                      itemCount: data?.length ?? 0,
                      itemBuilder: (context, index) {
                        return HorizontalQuestionCard(
                          isAnswer: data?[index].isAnswer ?? false,
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
                      padding: const EdgeInsets.all(16),
                      child: Center(
                        child: AutoSizeText(
                          'Belum ada pertanyaan',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
              error: (error, stackTrace) => Container(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: AutoSizeText(
                    'Terjadi kesalahan saat memuat data',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ) ??
            Container(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: LoadingAnimationWidget.inkDrop(
                  color: Colors.amber,
                  size: 50,
                ),
              ),
            ),
    );
  }
}
