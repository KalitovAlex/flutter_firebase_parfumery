import 'package:auto_route/auto_route.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/auth/bloc/google/google_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../core/globals.dart';
import '../../core/styles/widget/button_styles.dart';
import '../../core/styles/widget/text_styles.dart';
import '../../widgets/show_snack_bar.dart';
@RoutePage()
class GoogleRegScreen extends StatelessWidget {
  GoogleRegScreen({super.key});
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
     return BlocConsumer<GoogleBloc, GoogleState>(
       listener: (context, state) {
        if(state is GoogleLoading){

        }
        if(state is GoogleLoaded){

        }
        if(state is GoogleFailure){

        }
       },
       builder: (context, state) {
         return Scaffold(
              body: Stack(children: [
            Container(
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/background_main.png',),fit: BoxFit.cover)),
              padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 35.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Verify Google',
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
     
                          }
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
                ],
              ),
            ),
          ]));
       },
     );
}
}