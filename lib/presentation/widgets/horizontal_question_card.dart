import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

class HorizontalQuestionCard extends StatelessWidget {
  final String username;
  final bool questionStatus;
  final bool isAnswer;
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
    required this.isAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Question Header
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: Text(
                  (username.isNotEmpty ? username[0] : 'U').toUpperCase(),
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 12),
               Expanded(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     AutoSizeText(
                       username,
                       style: const TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 16,
                       ),
                       maxLines: 1,
                       minFontSize: 14,
                       overflow: TextOverflow.ellipsis,
                     ),
                     AutoSizeText(
                       formatDate(postDate),
                       style: TextStyle(
                         color: Colors.grey.shade600,
                         fontSize: 12,
                       ),
                       maxLines: 1,
                       minFontSize: 10,
                       overflow: TextOverflow.ellipsis,
                     ),
                   ],
                 ),
               ),
              // Status Badge
              Visibility(
                visible: !isAnswer,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: questionStatus
                        ? Colors.green.shade100
                        : Colors.red.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: AutoSizeText(
                    questionStatus ? 'Terbuka' : 'Ditutup',
                    style: TextStyle(
                      color: questionStatus
                          ? Colors.green.shade800
                          : Colors.red.shade800,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Question Content
          AutoSizeText(
            content,
            style: const TextStyle(
              fontSize: 16,
              height: 1.5,
            ),
            maxLines: isLongContent ? 5 : 2,
            minFontSize: 14,
            overflow: TextOverflow.ellipsis,
          ),

          // Edited indicator
          if (editedStatus) ...[
            const SizedBox(height: 8),
            AutoSizeText(
              'Diedit',
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 12,
                fontStyle: FontStyle.italic,
              ),
              maxLines: 1,
              minFontSize: 10,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ],
      ),
    );
  }
}
