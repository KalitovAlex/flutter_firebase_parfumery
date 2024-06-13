import 'package:auto_route/auto_route.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/auth/bloc/auth/auth_bloc.dart';
import 'package:flutter_firebase_parfumery/core/routes.gr.dart';
import 'package:flutter_firebase_parfumery/widgets/show_loading_circle.dart';
import 'package:flutter_firebase_parfumery/widgets/show_snack_bar.dart';
import 'package:sizer/sizer.dart';

import '../../core/globals.dart';
import '../../core/styles/widget/button_styles.dart';
import '../../core/styles/widget/text_styles.dart';
@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final blocCommand = BlocProvider.of<AuthBloc>(context);
    return BlocConsumer<AuthBloc , AuthState>(
      listener: (BuildContext context, AuthState state) {
        if(state is AuthLoading) {
          showLoadingCircle(context);
        }
        if(state is AuthLoaded){
          Navigator.of(context).pop();
          AutoRouter.of(context).push(const BottomNavigation());
          ScaffoldMessenger.of(context)..clearMaterialBanners()..showSnackBar(materialBanner('Nice', 'You have successfully logged in, good luck! ', ContentType.success));
        }
        if(state is AuthFailure){
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context)..clearMaterialBanners()..showSnackBar(materialBanner('Bad', 'We may have problems on the server, try logging in again, we will fix everything soon', ContentType.failure));
        }
      },
      builder: (context, state) {
        return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
            width: 100.w,
            decoration: const BoxDecoration(
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/parfumery_backround.png',width: 100.w,height: 45.h,alignment: Alignment.topCenter,fit: BoxFit.cover,),
                SizedBox(height: 2.h,),
                Text('Authorization', style: textStylePicker(context).headlineLarge,),
                Text('Enter the world of the best cosmetics', style: textStylePicker(context).labelMedium),
                Container(
                  margin: EdgeInsets.only(left: 5.w,right: 5.w,top: 2.h),
                  decoration: authTextStyles,height: 6.h,child: TextFormField(obscureText: false,controller: _emailController,decoration: textFormFieldRegistrationDecoration(CupertinoIcons.person_fill, 'Email'),),),
                Container(
                  margin: EdgeInsets.only(left: 5.w,right: 5.w,top: 2.h),
                  decoration: authTextStyles,height: 6.h,child: TextFormField(obscureText: true,controller: _passwordController,decoration: textFormFieldRegistrationDecoration(CupertinoIcons.lock_fill, 'Password'),),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Checkbox(activeColor: const Color.fromARGB(255, 141, 161, 143),value: isChecked, onChanged: (newbool) { 
                          setState(() {
                          isChecked = newbool!;
                          });}),
                        Text('Remember me', style: textStylePicker(context).labelMedium),
                      ],
                    ),
                      TextButton(onPressed: () {
                        AutoRouter.of(context).push(ForgotPassword());
                      }, child: Text('Forgot password ?',style: textStylePicker(context).headlineSmall,)),
                  ],
                ),
                Container(height: 6.h,width: 90.w,decoration: auth_button_container, child: TextButton(onPressed: () async{
                  if(_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty && _emailController.text.contains('@') && _emailController.text.contains('.')){
                    blocCommand.add(AuthEvent(ifGoogle: false, email: _emailController.text, password: _passwordController.text,rememberMe: isChecked));
                  } else{
                    ScaffoldMessenger.of(context)..clearSnackBars()..showSnackBar(materialBanner('Oops', 'Check your email and password,maybye you forget your email or password', ContentType.failure));
                  }
                }, child: Text('Login', style: textStylePicker(context).displayMedium,)),),
                SizedBox(height: 1.5.h,),
                Text('---------------------- or login with ----------------------',style: textStylePicker(context).labelMedium,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 13.h,child: IconButton(onPressed: (){
                      blocCommand.add(AuthEvent(ifGoogle: true));
                    }, icon: ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.asset('assets/google_logo.png'),)))
                  ],
                )
              ],
            ),
          ),
            Positioned(
             top: 0.0,
             left: 0.0,
             right: 0.0,
             child: AppBar(
               title: const Text(''),// You can add title here
               leading: IconButton(
                 icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                 onPressed: () => Navigator.of(context).pop(),
               ),
               elevation: 0.0, //No shadow
             ),),
          ]
        )
      );
      },
    );
  }
}