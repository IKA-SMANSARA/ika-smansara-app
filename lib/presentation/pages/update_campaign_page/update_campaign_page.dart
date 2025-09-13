import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:group_button/group_button.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/campaign_request.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:ika_smansara/presentation/misc/selected_poster.dart';
import 'package:ika_smansara/presentation/providers/campaign/delete_campaign_provider.dart';
import 'package:ika_smansara/presentation/providers/campaign/update_campaign_provider.dart';
import 'package:ika_smansara/presentation/providers/category/get_list_category_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/campaign_form.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class UpdateCampaignPage extends ConsumerStatefulWidget {
  final CampaignDocument campaignDocument;

  const UpdateCampaignPage({
    super.key,
    required this.campaignDocument,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UpdateCampaignPageState();
}

class _UpdateCampaignPageState extends ConsumerState<UpdateCampaignPage> {
  final TextEditingController campaignNameController = TextEditingController();
  final TextEditingController campaignDescriptionController =
      TextEditingController();
  final TextEditingController campaignGoalAmountController =
      TextEditingController();
  final TextEditingController campaignStartDateController =
      TextEditingController();
  final TextEditingController campaignEndDateController =
      TextEditingController();
  final GroupButtonController categoriesGroupButtonController =
      GroupButtonController();

  var categoriesData = <String>[];

  @override
  void initState() {
    super.initState();
    campaignNameController.text = widget.campaignDocument.campaignName ?? '';
    campaignDescriptionController.text =
        widget.campaignDocument.campaignDescription ?? '';
    campaignGoalAmountController.text =
        (widget.campaignDocument.goalAmount ?? 0)
            .toIDRCurrencyFormat()
            .toString();
    campaignStartDateController.text =
        widget.campaignDocument.dateStartCampaign.toString();
    campaignEndDateController.text =
        widget.campaignDocument.dateEndCampaign.toString();

    Future.delayed(2.seconds, () async {
      final categories = ref
              .read(getListCategoryProvider)
              .valueOrNull
              ?.map((e) => e.nameCategory?.toUpperCase())
              .toList() ??
          [];

      final selectedIndexes = widget.campaignDocument.categories
              ?.map(
                (e) {
                  categoriesData.add(e);
                  var a = categories.indexOf(
                    (e ?? '').toUpperCase(),
                  );
                  return a;
                },
              )
              .where((index) => index != -1)
              .toList() ??
          [];

      categoriesGroupButtonController.selectIndexes(selectedIndexes);
    });
  }

  @override
  void dispose() {
    super.dispose();
    campaignNameController.dispose();
    campaignDescriptionController.dispose();
    campaignGoalAmountController.dispose();
    campaignStartDateController.dispose();
    campaignEndDateController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var updateDataState = ref.watch(updateCampaignDocProvider);
    var deleteDataState = ref.watch(deleteCampaignDocProvider);

    // update data state error
    ref.listen(
      updateCampaignDocProvider,
      (_, state) => state.showSnackbarOnError(
        context,
      ),
    );

    // delete data state error
    ref.listen(
      deleteCampaignDocProvider,
      (_, state) => state.showSnackbarOnError(
        context,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Ubah ${widget.campaignDocument.campaignName}',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Text(
                'Ubah Galang Dana',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF104993),
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'Ubah informasi acara penggalangan dana Anda',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[600],
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              // Image selection section
              selectedPoster(
                ref: ref,
                imageUrl: widget.campaignDocument.photoThumbnail ?? '',
                isLoading: updateDataState.isLoading,
                context: context,
              ),
              const SizedBox(height: 32),
              // Campaign form
              CampaignForm(
                campaignNameController: campaignNameController,
                campaignDescriptionController: campaignDescriptionController,
                campaignGoalAmountController: campaignGoalAmountController,
                campaignStartDateController: campaignStartDateController,
                campaignEndDateController: campaignEndDateController,
                categoriesData: categoriesData,
                isUpdate: true,
                campaignDocument: widget.campaignDocument,
                categoriesGroupButtonController:
                    categoriesGroupButtonController,
              ),
              const SizedBox(height: 16),
              // Delete button
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: (updateDataState.isLoading ||
                          deleteDataState.isLoading)
                      ? null
                      : () {
                          context.displayAlertDialog(
                            title: 'Peringatan!',
                            content: 'Apakah anda yakin untuk hapus acara ini?',
                            positiveButtonText: 'Hapus',
                            onPositivePressed: () {
                              ref
                                  .read(deleteCampaignDocProvider.notifier)
                                  .deleteCampaign(
                                    campaignRequest: CampaignRequest(
                                      id: widget.campaignDocument.id,
                                      photoThumbnail: widget
                                          .campaignDocument.photoThumbnail,
                                      backerCount:
                                          widget.campaignDocument.backerCount,
                                      campaignDescription:
                                          campaignDescriptionController.text,
                                      campaignName: campaignNameController.text,
                                      categories: categoriesData,
                                      createdBy: ref
                                          .read(userDataProvider)
                                          .valueOrNull
                                          ?.authKey,
                                      currentAmount:
                                          widget.campaignDocument.currentAmount,
                                      dateEndCampaign:
                                          campaignEndDateController.text,
                                      dateStartCampaign:
                                          campaignStartDateController.text,
                                      goalAmount: int.parse(
                                        campaignGoalAmountController.text
                                            .replaceAll('.', '')
                                            .replaceAll('Rp', '')
                                            .replaceAll(' ', '0')
                                            .replaceAll('-', '0'),
                                      ),
                                      isActive: false,
                                      isDeleted: true,
                                    ),
                                  );
                              ref.read(routerProvider).pop();
                            },
                          );
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 197, 13, 13),
                  ),
                  child:
                      (updateDataState.isLoading || deleteDataState.isLoading)
                          ? LoadingAnimationWidget.horizontalRotatingDots(
                              color: Colors.amber,
                              size: 35,
                            )
                          : const AutoSizeText(
                              'Hapus Acara Ini',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
