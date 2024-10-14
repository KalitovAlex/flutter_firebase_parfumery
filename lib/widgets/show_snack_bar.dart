import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

SnackBar materialBanner(String title, String desc, ContentType contentType) {
  return SnackBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: title,
      message: desc,
      contentType: contentType,
      inMaterialBanner: true,
    ),
  );
}
