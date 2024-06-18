import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/main/globals.dart';
import '../../core/routes/routes.gr.dart';
import '../../core/styles/widget/button_styles.dart';
@RoutePage()
class AuthBoard extends StatelessWidget {
  const AuthBoard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 3.5.h),
        child: Column(
          children: [
            Image.asset('assets/intro.png'),
            SizedBox(height: 2.h,),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
              children: [
                TextSpan(text: 'Unveiling a World ',style: Theme.of(context).textTheme.titleLarge),
                TextSpan(text: 'Beauty \n   & Cosmetic ',style: textStylePicker(context).headlineLarge),
                TextSpan(text: 'Products',style: Theme.of(context).textTheme.titleLarge)
              ]
            )),
            SizedBox(height: 4.h,),
            Text('Browse the latest styles from top brands' , style: textStylePicker(context).labelMedium,),
            Text('Get personalized recommendations' , style: textStylePicker(context).labelMedium,),
            Text('Enjoy fast, free shiping', style: textStylePicker(context).labelMedium,),
            SizedBox(height: 2.h,),
            Container(width: 90.w,decoration: auth_button_container, child: TextButton(onPressed: (){
              AutoRouter.of(context).push(RegisterRoute());
            }, child: Text('Lets Get Started', style: textStylePicker(context).displayMedium,)),),
            SizedBox(height: 0.5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Allready have an account?', style: textStylePicker(context).titleSmall,),
                TextButton(onPressed: (){AutoRouter.of(context).push(const AuthRoute());}, child: const Text('Sign in', style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.w500),))
              ],
            )
          ],
        ),
      ),
    );
  }
}