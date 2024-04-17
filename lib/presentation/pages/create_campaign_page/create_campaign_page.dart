import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:group_button/group_button.dart';
import 'package:ika_smansara/domain/entities/campaign_request.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/pages/create_campaign_page/methods/selected_poster.dart';
import 'package:ika_smansara/presentation/providers/campaign/create_new_campaign_provider.dart';
import 'package:ika_smansara/presentation/providers/category/get_list_category_provider.dart';
import 'package:ika_smansara/presentation/providers/common/selected_image_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_date_time_field.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';

class CreateCampaignPage extends ConsumerStatefulWidget {
  const CreateCampaignPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateCampaignPageState();
}

class _CreateCampaignPageState extends ConsumerState<CreateCampaignPage> {
  final TextEditingController campaignNameController = TextEditingController();
  final TextEditingController campaignDescriptionController =
      TextEditingController();
  final TextEditingController campaignGoalAmountController =
      TextEditingController();
  final TextEditingController campaignStartDateController =
      TextEditingController();
  final TextEditingController campaignEndDateController =
      TextEditingController();

  var categoriesData = [];

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

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'Buat Galang Dana',
        ),
      ),
      body: ListView(
        children: [
          ...selectedPoster(
            ref: ref,
            imageUrl: '',
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
                    onPressed: () {
                      ref
                          .read(
                            createNewCampaignProvider.notifier,
                          )
                          .postNewCampaign(
                            campaignRequest: CampaignRequest(
                              backerCount: 0,
                              campaignDescription:
                                  campaignDescriptionController.text,
                              campaignName: campaignNameController.text,
                              categories: categoriesData,
                              createdBy: ref
                                  .read(userDataProvider)
                                  .valueOrNull
                                  ?.authKey,
                              currentAmount: 0,
                              dateEndCampaign: campaignEndDateController.text,
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
                            imageFile: selectedImage,
                          );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF104993),
                    ),
                    child: AutoSizeText(
                      'Publikasi Acara',
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
