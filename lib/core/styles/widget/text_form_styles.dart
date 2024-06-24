import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/styles/widget/text_styles.dart';
import 'package:sizer/sizer.dart';


class main_textFormField extends StatelessWidget {
   main_textFormField({
    super.key,
    required this.controller,
    required this.icon,
    required this.hint
  });
  IconData icon;
  String hint;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      height: 6.h,
      margin: EdgeInsets.only(bottom: 2.h),
      decoration: authTextStyles,
      child: TextFormField(
        decoration: textFormFieldRegistrationDecoration(icon, hint),
      ),
    ),);
  }
}