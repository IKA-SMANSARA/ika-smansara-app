import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_cubit.freezed.dart';
part 'image_state.dart';

class ImageCubit extends Cubit<ImageState> {
  ImageCubit() : super(const ImageState.initial(null));

  Future<void> setImage(File image) async {
    emit(state.copyWith(image: image));
  }
}
