import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/providers/contact_us/get_user_question_detail_provider.dart';
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
  @override
  Widget build(BuildContext context) {
    var questionDetailData = ref.watch(
      getUserQuestionDetailProvider(
        threadId: widget.threadId,
      ),
    );

    // show error text if failed post question
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
          ? Center(
              child: LoadingAnimationWidget.inkDrop(
                color: Colors.amber,
                size: 50,
              ),
            )
          : ListView(
              children: [
                Text(
                  '${questionDetailData.valueOrNull?.threadContent}',
                ),
              ],
            ),
    );
  }
}
