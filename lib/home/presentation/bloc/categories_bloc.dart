import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/common/di/injection.dart';
import 'package:ika_smansara/home/home.dart';

part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(const InitialCategories()) {
    on<CategoriesEvent>(
      (event, emit) async {
        await event.when(
          started: () {
            // init loading first
            emit(const CategoriesState.loadingCategories());
          },
          fetchData: () async {
            // fetching data
            await _getCategoriesUseCase().then(
              (value) {
                value.fold(
                  (error) => emit(
                    CategoriesState.errorCategories(error.message),
                  ),
                  (success) => emit(
                    CategoriesState.successCategories(
                      listCategoryItem: success.documents,
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  final _getCategoriesUseCase = getIt<GetCategoriesUseCase>();
}
