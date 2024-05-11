import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

class HorizontalQuestionCard extends StatelessWidget {
  final String username;
  final bool questionStatus;
  final bool editedStatus;
  final String postDate;
  final String content;
  final bool isLongContent;

  const HorizontalQuestionCard({
    super.key,
    required this.username,
    required this.questionStatus,
    required this.editedStatus,
    required this.postDate,
    required this.content,
    required this.isLongContent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6.5,
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  questionStatus ? 'Pertanyaan dari : ${username.toUpperCase()}': 'Dijawab oleh : ${username.toUpperCase()}',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              Visibility(
                visible: questionStatus,
                child: Container(
                  decoration: BoxDecoration(
                    color: questionStatusBackgroundColor(questionStatus),
                    borderRadius: BorderRadius.all(
                      Radius.elliptical(
                        50,
                        50,
                      ),
                    ),
                  ),
                  height: 20,
                  width: MediaQuery.of(context).size.width / 6,
                  child: Center(
                    child: Text(
                      questionStatus ? 'Open' : 'Close',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(16),
          isLongContent
              ? Text(
                content,
                style: TextStyle(
                  fontSize: 16,
                ),
              )
              : Text(
                content,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
          verticalSpace(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                formatDate(
                  postDate,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Visibility(
                visible: editedStatus,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    editedStatus ? 'edited' : '',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
