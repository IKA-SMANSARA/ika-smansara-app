import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/presentation/extensions/async_value_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/presentation/widgets/custom_text_field.dart';

class ContactUsPage extends ConsumerStatefulWidget {
  const ContactUsPage({super.key});

  @override
  ConsumerState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends ConsumerState<ContactUsPage> {
  final TextEditingController threadContentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var userData = ref.watch(userDataProvider);

    // show error text if get user data error
    ref.listen(
      userDataProvider,
      (_, state) => state.showSnackbarOnError(
        context,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText('Hubungi Kami'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                AutoSizeText(
                  'Silahkan ajukan pertanyaan anda terkait aplikasi IKA SMANSARA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpace(24),
                SizedBox(
                  height: 200,
                  child: CustomTextField(
                    labelText: 'Tulis pertanyaan disini',
                    controller: threadContentController,
                    expands: true,
                    maxLines: null,
                    textAlignVertical: TextAlignVertical.top,
                  ),
                ),
                verticalSpace(24),
                ElevatedButton(
                  onPressed: () {},
                  child: AutoSizeText('Kirim Pertanyaan'),
                ),
                verticalSpace(32),
                AutoSizeText(
                  'Daftar Pertanyaan Lain',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ).onClick(() {
                  context.showSnackBar('OPEN NEW PAGE');
                }),
                verticalSpace(16),
                AutoSizeText(
                  'Daftar Pertanyaan Saya',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ).onClick(() {
                  context.showSnackBar('OPEN NEW PAGE');
                }),
                verticalSpace(16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
