import 'package:auto_route/auto_route.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/auth/bloc/register/register_bloc.dart';
import 'package:flutter_firebase_parfumery/core/routes/routes.gr.dart';
import 'package:flutter_firebase_parfumery/widgets/show_loading_circle.dart';
import 'package:flutter_firebase_parfumery/widgets/show_snack_bar.dart';
import 'package:sizer/sizer.dart';

import '../../core/main/globals.dart';
import '../../core/styles/widget/button_styles.dart';
import '../../core/styles/widget/text_styles.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final blocCommand = BlocProvider.of<RegisterBloc>(context);
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if(state is RegisterLoading){
          showLoadingCircle(context);
        }
        if(state is RegisterLoaded){
          Navigator.pop(context);
          AutoRouter.of(context).push( HomeRoute(response: recomendationList));
          ScaffoldMessenger.of(context)..clearSnackBars()..showSnackBar(materialBanner('Good', 'Good luck)', ContentType.success));
        }
        if(state is RegisterLoadedWithGoogle){
          Navigator.pop(context);
          AutoRouter.of(context).push(GoogleRegRoute(uid: state.uid));
          ScaffoldMessenger.of(context)..clearSnackBars()..showSnackBar(materialBanner('Good', 'Super! fill in all the information in order to get into the world of the best smells', ContentType.success));
        }
        if(state is RegisterFailure){
          Navigator.pop(context);
          ScaffoldMessenger.of(context)..clearSnackBars()..showSnackBar(materialBanner('Oops', 'Our servers are currently down, we will fix it soon, try again later :)', ContentType.failure));
        }
      },
      builder: (context, state) {
        return Scaffold(
            body: Stack(children: [
          Container(
            padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 15.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Registration',
                  style: textStylePicker(context).headlineLarge,
                ),
                Text('Join the community of the best platform',
                    style: textStylePicker(context).labelMedium),
                Container(
                  margin: EdgeInsets.only(top: 2.h),
                  decoration: authTextStyles,
                  height: 6.h,
                  child: TextFormField(
                    controller: _fullNameController,
                    decoration: textFormFieldRegistrationDecoration(
                        CupertinoIcons.person_fill, 'Full name'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2.h),
                  decoration: authTextStyles,
                  height: 6.h,
                  child: TextFormField(
                    controller: _emailController,
                    decoration: textFormFieldRegistrationDecoration(
                        CupertinoIcons.mail_solid, 'Email'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2.h),
                  decoration: authTextStyles,
                  height: 6.h,
                  child: TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: textFormFieldRegistrationDecoration(
                        CupertinoIcons.lock_fill, 'Password'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2.h),
                  decoration: authTextStyles,
                  height: 6.h,
                  child: TextFormField(
                    obscureText: true,
                    controller: _confirmPasswordController,
                    decoration: textFormFieldRegistrationDecoration(
                        CupertinoIcons.lock_fill, 'Confirm Password'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2.h),
                  decoration: authTextStyles,
                  height: 6.h,
                  child: TextFormField(
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    maxLength: 11,
                    controller: _phoneNumberController,
                    decoration: textFormFieldRegistrationDecoration(
                        CupertinoIcons.person_fill, 'Phone Number'),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  decoration: auth_button_container,
                  width: 100.w,
                  height: 6.h,
                  child: TextButton(
                      onPressed: () {
                        if(_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty && _confirmPasswordController.text.isNotEmpty && _fullNameController.text.isNotEmpty && _phoneNumberController.text.isNotEmpty && _passwordController.text == _confirmPasswordController.text && _emailController.text.contains('@') && _emailController.text.contains('.')){
                        blocCommand.add(RegisterEvent(ifGoogle: false, email: _emailController.text, password: _passwordController.text, userName: _fullNameController.text, phoneNumber: _phoneNumberController.text));}
                        else{
                          ScaffoldMessenger.of(context)..clearSnackBars()..showSnackBar(materialBanner('Oops', 'fill in all the fields correctly, you may have made a mistake somewhere)', ContentType.failure));
                        }
                      },
                      child: Text(
                        'Sign Up',
                        style: textStylePicker(context).displayMedium,
                      )),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text('------------------- Or continue with -------------------',
                    style: textStylePicker(context).labelMedium),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () async {
                          blocCommand.add(RegisterEvent(ifGoogle: true));
                        },
                        icon: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset('assets/google_logo.png',
                                height: 10.h)))
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
              title: const Text(''), // You can add title here
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
              elevation: 0.0, //No shadow
            ),
          ),
        ]));
      },
    );
  }
}
