import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
@RoutePage()
class GoogleRegScreen extends StatelessWidget {
  const GoogleRegScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 5.w,right: 5.w,top: 4.h),
      ),
    );
  }
}