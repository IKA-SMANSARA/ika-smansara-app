import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'register_form_validation.dart';

class RegisterHandler {
  static Future<void> handleRegistration({
    required TextEditingController nameController,
    required TextEditingController emailController,
    required TextEditingController addressController,
    required TextEditingController phoneController,
    required TextEditingController passwordController,
    required TextEditingController retypePasswordController,
    required TextEditingController graduateYearController,
    required bool isAlumni,
    required BuildContext context,
    required WidgetRef ref,
    required Function(bool) setLoading,
  }) async {
    // Validasi form
    if (!RegisterFormValidation.validateAll(
      name: nameController.text,
      email: emailController.text,
      address: addressController.text,
      phone: phoneController.text,
      password: passwordController.text,
      retypePassword: retypePasswordController.text,
      isAlumni: isAlumni,
      graduateYear: graduateYearController.text,
      context: context,
    )) {
      return;
    }

    // Aktifkan loading setelah validasi berhasil
    setLoading(true);

    try {
      // Implement registration logic
      await ref.read(userDataProvider.notifier).register(
        name: nameController.text,
        email: emailController.text,
        address: addressController.text,
        phone: phoneController.text,
        password: passwordController.text,
        isAlumni: isAlumni,
        graduateYear: isAlumni ? graduateYearController.text : '0',
      );
    } finally {
      // Nonaktifkan loading setelah proses selesai (sukses atau error)
      setLoading(false);
    }
  }
}