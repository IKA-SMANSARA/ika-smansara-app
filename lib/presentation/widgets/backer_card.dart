import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BackerCard extends StatelessWidget {
  final String backerName;
  final String amount;
  final String dateTime;
  final String? profileImageUrl;
  const BackerCard({
    super.key,
    required this.backerName,
    required this.amount,
    required this.dateTime,
    this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    // Debug logging for troubleshooting
    debugPrint('BackerCard - Name: "$backerName", Amount: "$amount", DateTime: "$dateTime"');

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  // Profile Image
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: profileImageUrl != null
                          ? CachedNetworkImage(
                              imageUrl: profileImageUrl!,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
                                ),
                              ),
                              errorWidget: (context, url, error) => Container(
                                color: Colors.grey[300],
                                child: const Icon(
                                  Icons.person,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          : Container(
                              color: Colors.grey[300],
                              child: const Icon(
                                Icons.person,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AutoSizeText(
                          backerName.isNotEmpty ? backerName : 'Anonymous',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          minFontSize: 12,
                        ),
                        const SizedBox(height: 4),
                        AutoSizeText(
                          dateTime.isNotEmpty ? dateTime : 'Unknown date',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          minFontSize: 10,
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
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                minFontSize: 12,
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
