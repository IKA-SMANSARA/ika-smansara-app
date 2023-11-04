import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/common/di/injection.dart';
import 'package:ika_smansara/home/domain/use_case/get_all_campaigns_use_case/get_all_campaigns_use_case.dart';
import 'package:ika_smansara/home/home.dart';

part 'campaigns_event.dart';
part 'campaigns_state.dart';
part 'campaigns_bloc.freezed.dart';

class CampaignsBloc extends Bloc<CampaignsEvent, CampaignsState> {
  CampaignsBloc() : super(const InitialCampaigns()) {
    on<CampaignsEvent>(
      (event, emit) async {
        await event.when(
          started: () {
            // init loading first
            emit(const CampaignsState.loadingCampaigns());
          },
          fetchData: () async {
            // fetching data
            await _getAllCampaignsUseCase().then(
              (value) => {
                value.fold(
                  (error) => emit(
                    CampaignsState.errorCampaigns(error.message),
                  ),
                  (success) => emit(
                    CampaignsState.successCampaigns(
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

  final _getAllCampaignsUseCase = getIt<GetAllCampaignsUseCase>();
}
