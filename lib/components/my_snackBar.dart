import 'package:flutter/material.dart';

class SnackbarHelper {
  static void showSnackbar(
    BuildContext context, {
    required String title,
    required String message,
    int durationInSeconds = 5,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: durationInSeconds),
      ),
    );
  }
}
