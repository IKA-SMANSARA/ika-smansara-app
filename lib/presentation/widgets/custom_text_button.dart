import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final TextEditingController textEditingController;
  final void Function()? onTap;
  final String title;

  const CustomTextButton({
    super.key,
    required this.textEditingController,
    this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: textEditingController.text != '',
          child: Align(
            alignment: Alignment.centerLeft,
            child: AutoSizeText(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ),
        ),
        verticalSpace(4),
        SizedBox(
          width: double.infinity,
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.grey.shade800,
              ),
            ),
            padding: const EdgeInsets.only(left: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: AutoSizeText(
                (textEditingController.text != '')
                    ? textEditingController.text
                    : title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ).onClick(onTap!),
        ),
      ],
    );
  }
}
