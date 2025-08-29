import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/user_profile_document.dart';
import 'package:ika_smansara/domain/entities/user_profile_request.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/pages/create_campaign_page/methods/selected_poster.dart';
import 'package:ika_smansara/presentation/providers/common/selected_image_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/update_user_profile_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class UpdateUserProfilePage extends ConsumerStatefulWidget {
  final UserProfileDocument userProfileDocument;

  const UpdateUserProfilePage({
    super.key,
    required this.userProfileDocument,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UpdateUserProfilePageState();
}

class _UpdateUserProfilePageState extends ConsumerState<UpdateUserProfilePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController graduateYearController = TextEditingController();

  @override
  void initState() {
    super.initState();

    nameController.text = widget.userProfileDocument.name ?? '';
    emailController.text = widget.userProfileDocument.email ?? '';
    phoneController.text = widget.userProfileDocument.phone ?? '';
    addressController.text = widget.userProfileDocument.address ?? '';
    graduateYearController.text = widget.userProfileDocument.graduateYear ?? '';
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    addressController.dispose();
    graduateYearController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var selectedImage = ref.watch(selectedImageProvider);
    var updateDataState = ref.watch(updateUserProfileDocProvider);

    // update data state error
    ref.listen(
      updateUserProfileDocProvider,
      (_, state) => state.showSnackbarOnError(
        context,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText('Ubah Profil'),
      ),
      body: ListView(
        children: [
          ...selectedPoster(
            ref: ref,
            imageUrl: widget.userProfileDocument.photoProfileUrl ?? '',
            isLoading: updateDataState.isLoading,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                CustomTextField(
                  labelText: 'Nama',
                  controller: nameController,
                ),
                verticalSpace(16),
                SizedBox(
                  height: 200,
                  child: CustomTextField(
                    labelText: 'Alamat Lengkap',
                    controller: addressController,
                    expands: true,
                    maxLines: null,
                    textAlignVertical: TextAlignVertical.top,
                  ),
                ),
                verticalSpace(16),
                CustomTextField(
                  labelText: 'E-mail',
                  controller: emailController,
                ),
                verticalSpace(16),
                CustomTextField(
                  labelText: 'Nomor Telepon',
                  controller: phoneController,
                ),
                verticalSpace(8),
                Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    '*awali dengan angka 0, bukan +62',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
                verticalSpace(16),
                Visibility(
                  visible: widget.userProfileDocument.isAlumni ?? false,
                  child: Column(
                    children: [
                      CustomTextField(
                        labelText: 'Tahun Lulus',
                        controller: graduateYearController,
                        keyboardType: TextInputType.number,
                      ),
                      verticalSpace(8),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText(
                          '*tulis tahun saja cnt: 2008',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(16),
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
                                  'Apakah anda yakin untuk mengubah informasi profil ?',
                              positiveButtonText: 'Ubah',
                              onPositivePressed: () {
                                ref
                                    .read(updateUserProfileDocProvider.notifier)
                                    .updateUserProfileDoc(
                                      userProfileRequest: UserProfileRequest(
                                        id: widget.userProfileDocument.authKey,
                                        photoProfileUrl: (selectedImage == null)
                                            ? widget.userProfileDocument
                                                .photoProfileUrl
                                            : '',
                                        address: addressController.text,
                                        email: emailController.text,
                                        phone: phoneController.text,
                                        name: nameController.text,
                                        graduateYear:
                                            graduateYearController.text,
                                        authKey:
                                            widget.userProfileDocument.authKey,
                                        isAlumni:
                                            (graduateYearController.text != '')
                                                ? true
                                                : false,
                                        isAdmin: (widget.userProfileDocument
                                                    .isAdmin ==
                                                true)
                                            ? true
                                            : false,
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
                            'Update Profile',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
