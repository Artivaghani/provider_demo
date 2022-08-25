import 'package:flutter/material.dart';
import 'package:providerdemo/constance/app_color.dart';
import 'package:providerdemo/constance/app_style.dart';

class AppDialog {
  static buildErrorSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Appcolors.primarycolor,
        content: Text(
          message,
          style: Appstyles.whitesemibold12,
        ),
      ),
    );
  }
}
