import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class BackerCard extends StatelessWidget {
  final String backerName;
  final String amount;
  final String dateTime;
  const BackerCard({
    super.key,
    required this.backerName,
    required this.amount,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    // Debug logging for troubleshooting
    debugPrint('BackerCard - Name: "$backerName", Amount: "$amount", DateTime: "$dateTime"');

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    child: Icon(Icons.person),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AutoSizeText(
                          backerName.isNotEmpty ? backerName : 'Anonymous',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          minFontSize: 12,
                        ),
                        AutoSizeText(
                          dateTime.isNotEmpty ? dateTime : 'Unknown date',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          minFontSize: 8,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: AutoSizeText(
                amount.isNotEmpty ? amount : 'Rp 0',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                minFontSize: 10,
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
