import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/presentation/pages/my_donation_page/methods/carousel_transaction_image.dart';

class MyDonationCarousel extends ConsumerWidget {
  final AsyncValue<List<TransactionDocument>> transactions;

  const MyDonationCarousel({
    super.key,
    required this.transactions,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: carouselTransactionImage(
        context: context,
        campaigns: transactions,
      ),
    );
  }
}