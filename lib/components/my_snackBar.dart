import 'package:flutter/material.dart';

class SnackbarHelper {
  static void showSnackbar(
    BuildContext context, {
    required String message,
    int durationInSeconds = 2,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: durationInSeconds),
      ),
    );
  }
}
