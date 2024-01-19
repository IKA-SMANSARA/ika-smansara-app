import 'package:flutter/material.dart';

class CustomLoadingDialog extends StatelessWidget {
  const CustomLoadingDialog({super.key});

  static void show(BuildContext context, {Key? key}) => showDialog<void>(
        context: context,
        useRootNavigator: false,
        barrierDismissible: false,
        builder: (_) => CustomLoadingDialog(
          key: key,
        ),
      ).then(
        (_) => FocusScope.of(context).requestFocus(
          FocusNode(),
        ),
      );

  static void hide(BuildContext context) => Navigator.pop(context);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Center(
        child: Card(
          child: Container(
            width: 100,
            height: 80,
            padding: const EdgeInsets.all(12),
            child: const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
