import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/common/di/injection.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';

part 'detail_campaign_bloc.freezed.dart';
part 'detail_campaign_event.dart';
part 'detail_campaign_state.dart';

class DetailCampaignBloc
    extends Bloc<DetailCampaignEvent, DetailCampaignState> {
  DetailCampaignBloc() : super(const Initial()) {
    on<DetailCampaignEvent>(
      (event, emit) async {
        await event.when(
          started: () {
            // init loading first
            emit(const DetailCampaignState.loading());
          },
          fetchData: (String? documentId) async {
            // fetching data
            await _getDetailCampaignUseCase(documentId).then(
              (value) => {
                value.fold(
                  (error) => emit(
                    DetailCampaignState.error(error.message),
                  ),
                  (success) => emit(
                    DetailCampaignState.success(success),
                  ),
                ),
              },
            );
          },
        );
      },
    );
  }

  final _getDetailCampaignUseCase = getIt<GetDetailCampaignUseCase>();
}
