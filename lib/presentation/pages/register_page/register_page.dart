import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/extensions/build_context_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_secure_text_field.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';

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
        title: Text('Daftar'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                verticalSpace(24),
                Text(
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
                // verticalSpace(24),
                // const CircleAvatar(
                //   radius: 50,
                //   child: Icon(
                //     Icons.add_a_photo,
                //     size: 50,
                //     color: Colors.white,
                //   ),
                // ),
                verticalSpace(24),
                CustomTextField(
                  labelText: 'Email',
                  controller: emailController,
                ),
                verticalSpace(24),
                CustomTextField(
                  labelText: 'Nama Lengkap',
                  controller: nameController,
                ),
                verticalSpace(24),
                CustomTextField(
                  labelText: 'Alamat',
                  controller: addressController,
                ),
                verticalSpace(24),
                CustomTextField(
                  labelText: 'Nomor Telepon (awali dengan angka 0, bukan +62)',
                  controller: phoneController,
                ),
                verticalSpace(24),
                CheckboxListTile.adaptive(
                  title: Text(
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
                        labelText: 'Tahun Lulus (tulis tahun saja cnt: 2008)',
                        controller: graduateYearController,
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
                            child: const Text(
                              'Daftar',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        )
                      : const CircularProgressIndicator.adaptive(),
                  _ => const CircularProgressIndicator.adaptive(),
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
