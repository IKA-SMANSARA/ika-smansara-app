import 'package:ika_smansara/data/appwrite/appwrite_carousel_repository.dart';
import 'package:ika_smansara/data/repositories/carousel_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'carousel_repository_provider.g.dart';

@riverpod
CarouselRepository carouselRepository(CarouselRepositoryRef ref) =>
    AppwriteCarouselRepository();
