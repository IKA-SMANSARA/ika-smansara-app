import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:group_button/group_button.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/domain/entities/campaign_request.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:ika_smansara/presentation/misc/campaign_form_methods.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/providers/campaign/create_new_campaign_provider.dart';
import 'package:ika_smansara/presentation/providers/campaign/update_campaign_provider.dart';
import 'package:ika_smansara/presentation/providers/category/get_list_category_provider.dart';
import 'package:ika_smansara/presentation/providers/common/selected_image_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_date_time_field.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CampaignForm extends ConsumerStatefulWidget {
  final TextEditingController campaignNameController;
  final TextEditingController campaignDescriptionController;
  final TextEditingController campaignGoalAmountController;
  final TextEditingController campaignStartDateController;
  final TextEditingController campaignEndDateController;
  final List<String> categoriesData;
  final bool isUpdate;
  final CampaignDocument? campaignDocument;
  final GroupButtonController? categoriesGroupButtonController;

  const CampaignForm({
    super.key,
    required this.campaignNameController,
    required this.campaignDescriptionController,
    required this.campaignGoalAmountController,
    required this.campaignStartDateController,
    required this.campaignEndDateController,
    required this.categoriesData,
    this.isUpdate = false,
    this.campaignDocument,
    this.categoriesGroupButtonController,
  });

  @override
  ConsumerState<CampaignForm> createState() => _CampaignFormState();
}

class _CampaignFormState extends ConsumerState<CampaignForm> {
  @override
  Widget build(BuildContext context) {
    final selectedImage = ref.watch(selectedImageProvider);
    final saveDataState = ref.watch(createNewCampaignProvider);
    final updateDataState = ref.watch(updateCampaignDocProvider);

    final isLoading = widget.isUpdate ? updateDataState.isLoading : saveDataState.isLoading;

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Informasi Galang Dana',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF104993),
                ),
          ),
          const SizedBox(height: 24),
          CustomTextField(
            labelText: 'Nama Acara Penggalangan Dana',
            controller: widget.campaignNameController,
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 200,
            child: CustomTextField(
              labelText: 'Deskripsi Acara',
              controller: widget.campaignDescriptionController,
              expands: true,
              maxLines: null,
              textAlignVertical: TextAlignVertical.top,
            ),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            labelText: 'Target Pengumpulan Dana',
            controller: widget.campaignGoalAmountController,
            keyboardType: TextInputType.number,
            onChanged: (inputAmount) {
              setState(() {
                if (widget.campaignGoalAmountController.text != 'Rp.') {
                  widget.campaignGoalAmountController.text = int.parse(
                          (inputAmount != '')
                              ? inputAmount
                                  .replaceAll('.', '')
                                  .replaceAll('Rp', '')
                                  .replaceAll(' ', '0')
                                  .replaceAll('-', '0')
                              : '0')
                      .toIDRCurrencyFormat();
                } else {
                  widget.campaignGoalAmountController.text = '';
                }
              });
            },
          ),
          const SizedBox(height: 16),
          CustomDateTimeField(
            textEditingController: widget.campaignStartDateController,
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
                    widget.campaignStartDateController.text =
                        formatUploadableDateTime(
                      dateTime: pickedStartDate.toString(),
                    );
                  },
                );
              }
            },
          ),
          const SizedBox(height: 16),
          CustomDateTimeField(
            textEditingController: widget.campaignEndDateController,
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
                    widget.campaignEndDateController.text =
                        formatUploadableDateTime(
                      dateTime: pickedEndDate.toString(),
                    );
                  },
                );
              }
            },
          ),
          const SizedBox(height: 16),
          Text(
            'Kategori',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF104993),
                ),
          ),
          const SizedBox(height: 8),
          GroupButton(
            controller: widget.categoriesGroupButtonController,
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
                widget.categoriesData
                    .add(contentSelected.toString().toLowerCase());
              } else {
                widget.categoriesData
                    .remove(contentSelected.toString().toLowerCase());
              }
            },
            isRadio: false,
            options: GroupButtonOptions(
              spacing: 2,
              selectedColor: const Color(0xFF104993),
              unselectedColor: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(100),
              selectedTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
              unselectedTextStyle: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: isLoading
                  ? null
                  : () {
                      if (CampaignFormMethods.validateForm(
                        campaignNameController: widget.campaignNameController,
                        campaignDescriptionController: widget.campaignDescriptionController,
                        campaignGoalAmountController: widget.campaignGoalAmountController,
                        campaignStartDateController: widget.campaignStartDateController,
                        campaignEndDateController: widget.campaignEndDateController,
                        categoriesData: widget.categoriesData,
                        ref: ref,
                        context: context,
                        isUpdate: widget.isUpdate,
                      )) {
                        if (widget.isUpdate && widget.campaignDocument != null) {
                          // Update operation
                          ref
                              .read(updateCampaignDocProvider.notifier)
                              .updateCampaignDoc(
                                campaignRequest: CampaignRequest(
                                  id: widget.campaignDocument!.id,
                                  photoThumbnail: (selectedImage == null)
                                      ? widget.campaignDocument!.photoThumbnail
                                      : '',
                                  backerCount: widget.campaignDocument!.backerCount,
                                  campaignDescription:
                                      widget.campaignDescriptionController.text,
                                  campaignName: widget.campaignNameController.text,
                                  categories: widget.categoriesData,
                                  createdBy: ref
                                      .read(userDataProvider)
                                      .valueOrNull
                                      ?.authKey,
                                  currentAmount: widget.campaignDocument!.currentAmount,
                                  dateEndCampaign:
                                      widget.campaignEndDateController.text,
                                  dateStartCampaign:
                                      widget.campaignStartDateController.text,
                                  goalAmount: int.parse(
                                    widget.campaignGoalAmountController.text
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
                        } else {
                          // Create operation
                          ref
                              .read(createNewCampaignProvider.notifier)
                              .postNewCampaign(
                                campaignRequest: CampaignRequest(
                                  backerCount: 0,
                                  campaignDescription:
                                      widget.campaignDescriptionController.text,
                                  campaignName: widget.campaignNameController.text,
                                  categories: widget.categoriesData,
                                  createdBy: ref
                                      .read(userDataProvider)
                                      .valueOrNull
                                      ?.authKey,
                                  currentAmount: 0,
                                  dateEndCampaign:
                                      widget.campaignEndDateController.text,
                                  dateStartCampaign:
                                      widget.campaignStartDateController.text,
                                  goalAmount: int.parse(
                                    widget.campaignGoalAmountController.text
                                        .replaceAll('.', '')
                                        .replaceAll('Rp', '')
                                        .replaceAll(' ', '0')
                                        .replaceAll('-', '0'),
                                  ),
                                  isActive: true,
                                  isDeleted: false,
                                ),
                                imageFile: selectedImage,
                              );
                        }
                      }
                    },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF104993),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 2,
              ),
              child: isLoading
                  ? LoadingAnimationWidget.newtonCradle(
                      color: Colors.amber,
                      size: 35,
                    )
                  : Text(
                      widget.isUpdate ? 'Update Informasi Acara' : 'Publikasi Acara',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}