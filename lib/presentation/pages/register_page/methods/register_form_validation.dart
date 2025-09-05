import 'package:flutter/material.dart';

class RegisterFormValidation {
  static bool validateRequiredFields({
    required String name,
    required String email,
    required String address,
    required String phone,
    required String password,
    required String retypePassword,
    required BuildContext context,
  }) {
    if (name.isEmpty ||
        email.isEmpty ||
        address.isEmpty ||
        phone.isEmpty ||
        password.isEmpty ||
        retypePassword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Mohon lengkapi semua field yang wajib')),
      );
      return false;
    }
    return true;
  }

  static bool validateEmailFormat({
    required String email,
    required BuildContext context,
  }) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(email)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Format email tidak valid')),
      );
      return false;
    }
    return true;
  }

  static bool validatePasswordLength({
    required String password,
    required BuildContext context,
  }) {
    if (password.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Password minimal 6 karakter')),
      );
      return false;
    }
    return true;
  }

  static bool validatePasswordConfirmation({
    required String password,
    required String retypePassword,
    required BuildContext context,
  }) {
    if (password != retypePassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Password dan konfirmasi password tidak cocok')),
      );
      return false;
    }
    return true;
  }

  static bool validatePhoneNumber({
    required String phone,
    required BuildContext context,
  }) {
    if (phone.length < 10) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Nomor telepon minimal 10 digit')),
      );
      return false;
    }
    return true;
  }

  static bool validateGraduateYear({
    required bool isAlumni,
    required String graduateYear,
    required BuildContext context,
  }) {
    if (isAlumni && graduateYear.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Mohon isi tahun lulus')),
      );
      return false;
    }

    if (isAlumni) {
      final year = int.tryParse(graduateYear);
      if (year == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Tahun lulus harus berupa angka')),
        );
        return false;
      }
      if (year < 1900 || year > DateTime.now().year) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Tahun lulus tidak valid')),
        );
        return false;
      }
    }
    return true;
  }

  static bool validateAll({
    required String name,
    required String email,
    required String address,
    required String phone,
    required String password,
    required String retypePassword,
    required bool isAlumni,
    required String graduateYear,
    required BuildContext context,
  }) {
    return validateRequiredFields(
          name: name,
          email: email,
          address: address,
          phone: phone,
          password: password,
          retypePassword: retypePassword,
          context: context,
        ) &&
        validateEmailFormat(email: email, context: context) &&
        validatePasswordLength(password: password, context: context) &&
        validatePasswordConfirmation(
          password: password,
          retypePassword: retypePassword,
          context: context,
        ) &&
        validatePhoneNumber(phone: phone, context: context) &&
        validateGraduateYear(
          isAlumni: isAlumni,
          graduateYear: graduateYear,
          context: context,
        );
  }
}