// Chopper already uses the Logger package. Printing the logs to the console requires
// the following setup.
import 'package:flutter/material.dart';

void keyboardDismiss(BuildContext context) {
  return FocusScope.of(context).unfocus();
}
