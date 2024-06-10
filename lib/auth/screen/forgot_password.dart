import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/auth/screen/auth_board.dart';
import 'package:flutter_firebase_parfumery/core/styles/widget/button_styles.dart';
import 'package:sizer/sizer.dart';
@RoutePage()
class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 5.w,right: 5.w,top: 15.h),
          child: Column(
            children: [
              const Text('You forget your password?'),
              const Text('No worries, reset password'),
              Container(decoration: auth_button_container, child: TextButton(onPressed: (){}, child: const Text('Click me')),)
            ],
          ),
        ),
    );
  }
}