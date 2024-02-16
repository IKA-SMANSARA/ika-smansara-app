import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';

class SuccessAddBankAccountPage extends StatelessWidget {
  const SuccessAddBankAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                verticalSpace(128),
                Assets.images.iconDoneWebp.image(
                  height: 128,
                ),
                verticalSpace(24),
                Align(
                  child: AutoSizeText(
                    'SUKSES MENAMBAHKAN DATA REKENING BANK',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
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
