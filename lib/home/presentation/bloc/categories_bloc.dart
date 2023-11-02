import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/common/di/injection.dart';
import 'package:ika_smansara/home/home.dart';

part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(const Initial()) {
    on<CategoriesEvent>(
      (event, emit) async {
        await event.when(
          started: () {
            // init loading first
            emit(const CategoriesState.loading());
          },
          fetchData: () async {
            // fetching data
            await _getCategoriesUseCase().then((value) {
              value.fold(
                (error) => emit(
                  CategoriesState.error(error.message),
                ),
                (success) => emit(
                  CategoriesState.success(listCategoryItem: success.documents),
                ),
              );
            });
          },
        );
      },
    );
  }

  final _getCategoriesUseCase = getIt<GetCategoriesUseCase>();
}
