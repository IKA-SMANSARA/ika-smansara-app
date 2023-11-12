import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/common/di/injection.dart';
import 'package:ika_smansara/list_campaign_per_category/list_campaign_per_category.dart';

part 'campaigns_event.dart';
part 'campaigns_state.dart';
part 'campaigns_bloc.freezed.dart';

class CampaignsBloc extends Bloc<CampaignsEvent, CampaignsState> {
  CampaignsBloc() : super(const InitialCampaign()) {
    on<CampaignsEvent>(
      (event, emit) async {
        await event.when(
          started: () {
            // init loading first
            emit(const CampaignsState.loadingCampaign());
          },
          fetchData: (String? categoryName) async {
            // fetching data
            await _getAllCampaignPerCategory(categoryName: categoryName).then(
              (value) => {
                value.fold(
                  (error) => emit(
                    CampaignsState.errorCampaign(error.message),
                  ),
                  (success) => emit(
                    CampaignsState.successCampaign(
                      listCampaigns: success.documents,
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

  final _getAllCampaignPerCategory = getIt<GetAllCampaignPerCategoryUseCase>();
}
