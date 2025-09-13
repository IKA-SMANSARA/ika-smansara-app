import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/providers/common/selected_image_provider.dart';

class CampaignFormMethods {
  static void showErrorSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }

  static bool validateForm({
    required TextEditingController campaignNameController,
    required TextEditingController campaignDescriptionController,
    required TextEditingController campaignGoalAmountController,
    required TextEditingController campaignStartDateController,
    required TextEditingController campaignEndDateController,
    required List<String> categoriesData,
    required WidgetRef ref,
    required BuildContext context,
    bool isUpdate = false,
  }) {
    final campaignName = campaignNameController.text.trim();
    final campaignDescription = campaignDescriptionController.text.trim();
    final campaignGoalAmount = campaignGoalAmountController.text.trim();
    final campaignStartDate = campaignStartDateController.text.trim();
    final campaignEndDate = campaignEndDateController.text.trim();
    final selectedImage = ref.watch(selectedImageProvider);

    if (campaignName.isEmpty) {
      showErrorSnackBar(context, 'Nama acara tidak boleh kosong');
      return false;
    }

    if (campaignDescription.isEmpty) {
      showErrorSnackBar(context, 'Deskripsi acara tidak boleh kosong');
      return false;
    }

    if (campaignDescription.length < 50) {
      showErrorSnackBar(context, 'Deskripsi acara minimal 50 karakter');
      return false;
    }

    if (campaignGoalAmount.isEmpty) {
      showErrorSnackBar(context, 'Target pengumpulan dana tidak boleh kosong');
      return false;
    }

    if (campaignStartDate.isEmpty) {
      showErrorSnackBar(context, 'Tanggal mulai acara tidak boleh kosong');
      return false;
    }

    if (campaignEndDate.isEmpty) {
      showErrorSnackBar(context, 'Tanggal selesai acara tidak boleh kosong');
      return false;
    }

    if (categoriesData.isEmpty) {
      showErrorSnackBar(context, 'Pilih minimal satu kategori');
      return false;
    }

    // For create operation, image is required. For update, it's optional
    if (!isUpdate && selectedImage == null) {
      showErrorSnackBar(context, 'Pilih gambar poster acara');
      return false;
    }

    // Validate date range
    try {
      final startDate = DateTime.parse(campaignStartDate);
      final endDate = DateTime.parse(campaignEndDate);

      if (endDate.isBefore(startDate) || endDate.isAtSameMomentAs(startDate)) {
        showErrorSnackBar(context, 'Tanggal selesai harus setelah tanggal mulai');
        return false;
      }
    } catch (e) {
      showErrorSnackBar(context, 'Format tanggal tidak valid');
      return false;
    }

    return true;
  }
}