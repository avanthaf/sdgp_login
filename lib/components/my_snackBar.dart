import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class SnackbarHelper {
  static void showSnackbar(
    BuildContext context, {
    required String title,
    required String message,
    required ContentType contentType,
    int durationInSeconds = 5,
  }) {
    final materialBanner = MaterialBanner(
      elevation: 0,
      backgroundColor: Colors.transparent,
      forceActionsBelow: true,
      content: AwesomeSnackbarContent(
        title: title,
        message: message,
        contentType: contentType,
        inMaterialBanner: true,
      ),
      actions: const [SizedBox.shrink()],
    );

    final messenger = ScaffoldMessenger.of(context);
    messenger.hideCurrentMaterialBanner();
    messenger.showMaterialBanner(materialBanner);

    Future.delayed(Duration(seconds: durationInSeconds), () {
      messenger.hideCurrentMaterialBanner();
    });
  }
}
