import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/home/home.dart';

part 'carousel_event.dart';
part 'carousel_state.dart';
part 'carousel_bloc.freezed.dart';

class CarouselBloc extends Bloc<CarouselEvent, CarouselState> {
  CarouselBloc() : super(const InitialCarousel()) {
    on<CarouselEvent>(
      (event, emit) async {
        await event.when(
          started: () {
            // init loading first
            emit(const CarouselState.loadingCarousel());
          },
          fetchData: () async {
            // fetching data
            await _getCarouselUseCase().then(
              (value) => {
                value.fold(
                  (error) => emit(
                    CarouselState.errorCarousel(error.message),
                  ),
                  (success) => emit(
                    CarouselState.successCarousel(
                      listCarouselItem: success.documents,
                    ),
                  ),
                ),
              },
            );
          },
        );
      },
    );
  }

  final _getCarouselUseCase = getIt<GetCarouselUseCase>();
}
