import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_secure_text_field.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController retypePasswordController =
      TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController graduateYearController = TextEditingController();
  var _isAlumni = false;

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    passwordController.dispose();
    retypePasswordController.dispose();
    emailController.dispose();
    addressController.dispose();
    phoneController.dispose();
    graduateYearController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      userDataProvider,
      (previous, next) {
        if (next is AsyncData && next.value != null) {
          ref.read(routerProvider).goNamed('main');
        } else if (next is AsyncError) {
          context.showSnackBar(
            next.error.toString(),
          );
        }
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText('Daftar'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                verticalSpace(24),
                AutoSizeText(
                  'Mari mulai berbagi kebaikan untuk sesama',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                verticalSpace(16),
                Divider(
                  height: 1,
                  color: Colors.black,
                ),
                verticalSpace(24),
                CustomTextField(
                  labelText: 'Email',
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                ),
                verticalSpace(24),
                CustomTextField(
                  labelText: 'Nama Lengkap',
                  controller: nameController,
                  keyboardType: TextInputType.name,
                ),
                verticalSpace(24),
                SizedBox(
                  height: 200,
                  child: CustomTextField(
                    labelText: 'Alamat',
                    controller: addressController,
                    expands: true,
                    maxLines: null,
                    keyboardType: TextInputType.streetAddress,
                    textAlignVertical: TextAlignVertical.top,
                  ),
                ),
                verticalSpace(24),
                CustomTextField(
                  labelText: 'Nomor Telepon',
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
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
                verticalSpace(24),
                CheckboxListTile.adaptive(
                  title: AutoSizeText(
                    'Apakah anda lulusan dari SMA Negeri 1 Jepara ?',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  value: _isAlumni,
                  onChanged: (bool? value) {
                    setState(() {
                      _isAlumni = value ?? false;

                      if (_isAlumni == false) {
                        graduateYearController.text = '';
                      }
                    });
                  },
                ),
                Visibility(
                  visible: _isAlumni,
                  child: Column(
                    children: [
                      verticalSpace(24),
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
                verticalSpace(24),
                CustomSecureTextField(
                  labelText: 'Password',
                  controller: passwordController,
                ),
                verticalSpace(24),
                CustomSecureTextField(
                  labelText: 'Ulangi Password',
                  controller: retypePasswordController,
                ),
                verticalSpace(24),
                switch (ref.watch(userDataProvider)) {
                  AsyncData(:final value) => value == null
                      ? SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (passwordController.text ==
                                  retypePasswordController.text) {
                                ref.read(userDataProvider.notifier).register(
                                      name: nameController.text,
                                      email: emailController.text,
                                      address: addressController.text,
                                      phone: phoneController.text,
                                      password: retypePasswordController.text,
                                      graduateYear: graduateYearController.text,
                                      isAlumni: _isAlumni,
                                    );
                              } else {
                                context.showSnackBar(
                                  'Silakan ketik ulang kata sandi Anda dengan nilai yang sama dengan kolom password',
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF104993),
                            ),
                            child: AutoSizeText(
                              'Daftar',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      : LoadingAnimationWidget.newtonCradle(
                        color: Colors.amber,
                        size: 35,
                      ),
                  _ => LoadingAnimationWidget.newtonCradle(
                        color: Colors.amber,
                        size: 35,
                      ),
                },
                verticalSpace(24)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
