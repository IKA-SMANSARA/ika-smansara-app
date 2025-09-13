import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:group_button/group_button.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/campaign_request.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/pages/create_campaign_page/methods/selected_poster.dart';
import 'package:ika_smansara/presentation/providers/campaign/delete_campaign_provider.dart';
import 'package:ika_smansara/presentation/providers/campaign/update_campaign_provider.dart';
import 'package:ika_smansara/presentation/providers/category/get_list_category_provider.dart';
import 'package:ika_smansara/presentation/providers/common/selected_image_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_date_time_field.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';
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

  var categoriesData = [];

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
    var selectedImage = ref.watch(selectedImageProvider);
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
      body: ListView(
        children: [
          selectedPoster(
            ref: ref,
            imageUrl: widget.campaignDocument.photoThumbnail ?? '',
            isLoading: updateDataState.isLoading,
            context: context,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                CustomTextField(
                  labelText: 'Nama Acara Penggalangan Dana',
                  controller: campaignNameController,
                ),
                verticalSpace(16),
                SizedBox(
                  height: 200,
                  child: CustomTextField(
                    labelText: 'Deskripsi Acara',
                    controller: campaignDescriptionController,
                    expands: true,
                    maxLines: null,
                    textAlignVertical: TextAlignVertical.top,
                  ),
                ),
                verticalSpace(16),
                CustomTextField(
                  labelText: 'Target Pengumpulan Dana',
                  controller: campaignGoalAmountController,
                  keyboardType: TextInputType.number,
                  onChanged: (inputAmount) {
                    setState(() {
                      if (campaignGoalAmountController.text != 'Rp.') {
                        campaignGoalAmountController.text = int.parse(
                                (inputAmount != '')
                                    ? inputAmount
                                        .replaceAll('.', '')
                                        .replaceAll('Rp', '')
                                        .replaceAll(' ', '0')
                                        .replaceAll('-', '0')
                                    : '0')
                            .toIDRCurrencyFormat();
                      } else {
                        campaignGoalAmountController.text = '';
                      }
                    });
                  },
                ),
                verticalSpace(16),
                CustomDateTimeField(
                  textEditingController: campaignStartDateController,
                  title: 'Tanggal Dimulai Acara',
                  onTap: () async {
                    var pickedStartDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(3025),
                    );

                    if (pickedStartDate != null) {
                      setState(
                        () {
                          campaignStartDateController.text =
                              formatUploadableDateTime(
                            dateTime: pickedStartDate.toString(),
                          );
                        },
                      );
                    }
                  },
                ),
                verticalSpace(16),
                CustomDateTimeField(
                  textEditingController: campaignEndDateController,
                  title: 'Tanggal Selesai Acara',
                  onTap: () async {
                    var pickedEndDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(3025),
                    );

                    if (pickedEndDate != null) {
                      setState(
                        () {
                          campaignEndDateController.text =
                              formatUploadableDateTime(
                            dateTime: pickedEndDate.toString(),
                          );
                        },
                      );
                    }
                  },
                ),
                verticalSpace(16),
                GroupButton(
                  controller: categoriesGroupButtonController,
                  buttons: ref
                          .watch(getListCategoryProvider)
                          .valueOrNull
                          ?.map(
                            (e) => e.nameCategory?.toUpperCase(),
                          )
                          .toList() ??
                      [],
                  onSelected: (contentSelected, index, isSelected) {
                    if (isSelected) {
                      categoriesData
                          .add(contentSelected.toString().toLowerCase());
                    } else {
                      categoriesData
                          .remove(contentSelected.toString().toLowerCase());
                    }
                  },
                  isRadio: false,
                  options: GroupButtonOptions(
                    spacing: 2,
                    selectedColor: const Color(0xFF104993),
                    unselectedColor: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(100),
                    selectedTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    unselectedTextStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
                verticalSpace(24),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: updateDataState.isLoading
                        ? null
                        : () {
                            context.displayAlertDialog(
                              title: 'Peringatan!',
                              content:
                                  'Apakah anda yakin untuk mengubah informasi acara ini?',
                              positiveButtonText: 'Ubah',
                              onPositivePressed: () {
                                ref
                                    .read(updateCampaignDocProvider.notifier)
                                    .updateCampaignDoc(
                                      campaignRequest: CampaignRequest(
                                        id: widget.campaignDocument.id,
                                        photoThumbnail: (selectedImage == null)
                                            ? widget
                                                .campaignDocument.photoThumbnail
                                            : '',
                                        backerCount:
                                            widget.campaignDocument.backerCount,
                                        campaignDescription:
                                            campaignDescriptionController.text,
                                        campaignName:
                                            campaignNameController.text,
                                        categories: categoriesData,
                                        createdBy: ref
                                            .read(userDataProvider)
                                            .valueOrNull
                                            ?.authKey,
                                        currentAmount: widget
                                            .campaignDocument.currentAmount,
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
                                        isActive: true,
                                        isDeleted: false,
                                      ),
                                      imageFile: (selectedImage != null)
                                          ? selectedImage
                                          : null,
                                    );
                                ref.read(routerProvider).pop();
                              },
                            );
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF104993),
                    ),
                    child: updateDataState.isLoading
                        ? LoadingAnimationWidget.horizontalRotatingDots(
                            color: Colors.amber,
                            size: 35,
                          )
                        : AutoSizeText(
                            'Update Informasi Acara',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
                verticalSpace(16),
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
                              content:
                                  'Apakah anda yakin untuk hapus acara ini?',
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
                                        campaignName:
                                            campaignNameController.text,
                                        categories: categoriesData,
                                        createdBy: ref
                                            .read(userDataProvider)
                                            .valueOrNull
                                            ?.authKey,
                                        currentAmount: widget
                                            .campaignDocument.currentAmount,
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
                      backgroundColor: Color.fromARGB(255, 197, 13, 13),
                    ),
                    child:
                        (updateDataState.isLoading || deleteDataState.isLoading)
                            ? null
                            : AutoSizeText(
                                'Hapus Acara Ini',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                  ),
                ),
                verticalSpace(24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
