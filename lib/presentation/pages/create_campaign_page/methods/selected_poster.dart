import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/providers/common/selected_image_provider.dart';
import 'package:image_picker/image_picker.dart';

List<Widget> selectedPoster({
  required WidgetRef ref,
  required String imageUrl,
}) =>
    [
      Visibility(
        visible: (imageUrl != '') && (ref.watch(selectedImageProvider) != null),
        child: Column(
          children: [
            Visibility(
              visible: ref.watch(selectedImageProvider) == null,
              child: const Icon(
                Icons.image_rounded,
                size: 70,
              ),
            ),
            Visibility(
              visible: ref.watch(selectedImageProvider) != null,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 16,
                ),
                child: SizedBox(
                  child: Image.file(
                    ref.watch(selectedImageProvider) ??
                        File('assets/images/a1.webp'),
                    height: 200,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Visibility(
        visible: (imageUrl != '') && (ref.watch(selectedImageProvider) == null),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16,
            left: 16,
            right: 16,
          ),
          child: SizedBox(
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              placeholder: (context, url) =>
                  const CircularProgressIndicator.adaptive(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF104993),
            minimumSize: const Size(350, 36),
            padding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          onPressed: () async {
            final image = await ImagePicker().pickImage(
              source: ImageSource.gallery,
            );
            if (image == null) return;
            await ref.read(selectedImageProvider.notifier).selectedImage(
                  File(image.path),
                );
          },
          child: Text(
            'Pilih Poster Galang Dana',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ];
