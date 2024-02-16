import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_image_provider.g.dart';

@riverpod
class SelectedImage extends _$SelectedImage {
  @override
  File? build() => null;

  Future<void> selectedImage(File? imageFile) async => state = imageFile;
}
