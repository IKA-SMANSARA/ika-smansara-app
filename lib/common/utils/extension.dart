import 'package:flutter/material.dart';

void keyboardDismiss(BuildContext context) {
  return FocusScope.of(context).unfocus();
}
