import 'package:flutter/material.dart';

class RegisterControllers {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController retypePasswordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController graduateYearController = TextEditingController();

  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    retypePasswordController.dispose();
    emailController.dispose();
    addressController.dispose();
    phoneController.dispose();
    graduateYearController.dispose();
  }
}