import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/providers/common/selected_image_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

void _showImageSourceDialog(WidgetRef ref, BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (BuildContext context) {
      return SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8),
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Pilih Sumber Gambar',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 24),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.photo_library,
                  color: Colors.blue.shade600,
                ),
              ),
              title: const Text(
                'Ambil dari Galeri',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: const Text(
                'Pilih foto dari galeri perangkat',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              onTap: () async {
                Navigator.of(context).pop();
                await _pickImage(ref, ImageSource.gallery);
              },
            ),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.green.shade600,
                ),
              ),
              title: const Text(
                'Ambil dari Kamera',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: const Text(
                'Ambil foto baru dengan kamera',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              onTap: () async {
                Navigator.of(context).pop();
                await _pickImage(ref, ImageSource.camera);
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      );
    },
  );
}

Future<void> _pickImage(WidgetRef ref, ImageSource source) async {
  try {
    final image = await ImagePicker().pickImage(
      source: source,
      imageQuality: 80, // Compress image quality
      maxWidth: 1200, // Max width to reduce file size
      maxHeight: 1200, // Max height to reduce file size
    );
    if (image == null) return;

    await ref.read(selectedImageProvider.notifier).selectedImage(
          File(image.path),
        );
  } catch (e) {
    // Handle error - could show snackbar
    debugPrint('Error picking image: $e');
  }
}

List<Widget> selectedPoster({
  required WidgetRef ref,
  required String imageUrl,
  required bool isLoading,
  required BuildContext context,
}) {
  final selectedImage = ref.watch(selectedImageProvider);
  final hasExistingImage = imageUrl.isNotEmpty;
  final hasSelectedImage = selectedImage != null;

  return [
    // Image Display Section
    Container(
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: hasSelectedImage
          ? ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.file(
                selectedImage,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            )
          : hasExistingImage
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    placeholder: (context, url) => Center(
                      child: LoadingAnimationWidget.newtonCradle(
                        color: Colors.amber,
                        size: 35,
                      ),
                    ),
                    errorWidget: (context, url, error) => const Center(
                      child: Icon(
                        Icons.image_not_supported,
                        size: 50,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                )
              : const Center(
                  child: Icon(
                    Icons.image_rounded,
                    size: 70,
                    color: Colors.grey,
                  ),
                ),
    ),

    // Button Section
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade600,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
        ),
        onPressed: isLoading
            ? null
            : () => _showImageSourceDialog(ref, context),
        child: isLoading
            ? LoadingAnimationWidget.newtonCradle(
                color: Colors.amber,
                size: 35,
              )
            : const Text(
                'Pilih Foto / Gambar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
    ),
  ];
}
