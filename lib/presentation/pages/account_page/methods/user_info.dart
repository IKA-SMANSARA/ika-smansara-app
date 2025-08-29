import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';

Widget userInfo({
  bool isAdmin = false,
  required AsyncValue<UserProfileDocument?> userData,
}) =>
    Padding(
      padding: const EdgeInsets.only(top: 36),
      child: Center(
        child: Column(
          children: [
            (userData.valueOrNull?.photoProfileUrl != null)
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: CachedNetworkImage(
                        imageUrl: userData.valueOrNull?.photoProfileUrl ?? '',
                        fit: BoxFit.contain,
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  )
                : const CircleAvatar(
                    radius: 50,
                    child: Icon(
                      Icons.add_a_photo,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
            verticalSpace(16),
            AutoSizeText(
              userData.valueOrNull?.name ?? '',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            verticalSpace(8),
            Visibility(
              visible: isAdmin,
              child: AutoSizeText(
                'ADMIN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
            verticalSpace(8),
          ],
        ),
      ),
    );
