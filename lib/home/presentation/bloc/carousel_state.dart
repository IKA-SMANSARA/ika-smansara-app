part of 'carousel_bloc.dart';

@freezed
class CarouselState with _$CarouselState {
  const factory CarouselState.initialCarousel() = InitialCarousel;
  const factory CarouselState.successCarousel({
    @Default([]) List<CarouselItemResponse>? listCarouselItem,
  }) = SuccessCarousel;
  const factory CarouselState.errorCarousel(String? errorMessage) =
      ErrorCarousel;
  const factory CarouselState.loadingCarousel() = LoadingCarousel;
}
