import 'package:flutter/material.dart';

class CreateAccountBankControllers {
  final TextEditingController bankNameController = TextEditingController();
  final TextEditingController bankAccountNumberController = TextEditingController();
  final TextEditingController bankAccountNameController = TextEditingController();

  void dispose() {
    bankNameController.dispose();
    bankAccountNumberController.dispose();
    bankAccountNameController.dispose();
  }
}