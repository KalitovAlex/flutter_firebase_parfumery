import 'package:auto_route/auto_route.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/auth/bloc/forgot_password/forgot_password_bloc.dart';
import 'package:flutter_firebase_parfumery/core/routes.gr.dart';
import 'package:flutter_firebase_parfumery/core/styles/widget/button_styles.dart';
import 'package:flutter_firebase_parfumery/core/styles/widget/text_styles.dart';
import 'package:flutter_firebase_parfumery/widgets/show_loading_circle.dart';
import 'package:flutter_firebase_parfumery/widgets/show_snack_bar.dart';
import 'package:sizer/sizer.dart';

@RoutePage()
class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloccommand = BlocProvider.of<ForgotPasswordBloc>(context);
    final textStyle = Theme.of(context).textTheme;
    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        if(state is ForgotPasswordLoading){
          showLoadingCircle(context);
        }
        if(state is ForgotPasswordLoaded){
          Navigator.of(context).pop();
          AutoRouter.of(context).push(const AuthRoute());
          ScaffoldMessenger.of(context)..clearSnackBars()..showSnackBar(materialBanner('Good', 'Check your email and go try authorizate again)', ContentType.success));
        }
        if(state is ForgotPasswordFailure){
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context)..clearSnackBars()..showSnackBar(materialBanner('Oops', 'Try again another time, apparently our servers are sleeping now, we will fix it soon)', ContentType.failure));
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Stack(children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/background.png'),
                      fit: BoxFit.cover)),
              padding: EdgeInsets.only(left: 5.w, top: 35.h, right: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    'You forget your password?',
                    style: textStyle.headlineLarge,
                    textAlign: TextAlign.center,
                  )),
                  Text(
                    'No worries, set your email',
                    style: textStyle.labelMedium,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    decoration: authTextStyles,
                    child: TextFormField(
                      controller: _emailController,
                      decoration: textFormFieldRegistrationDecoration(
                          CupertinoIcons.lock_fill, 'Email'),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    width: 90.w,
                    decoration: auth_button_container,
                    child: TextButton(
                        onPressed: () {
                          if(_emailController.text.isEmpty && _emailController.text.contains('@') && _emailController.text.contains('.')){
                            ScaffoldMessenger.of(context)..clearSnackBars()..showSnackBar(materialBanner('Oops', 'Try again, apparently you made a mistake with the email', ContentType.failure));
                          }
                          else{
                            bloccommand.add(ForgotPasswordEvent(email: _emailController.text));
                          }
                        },
                        child: Text(
                          'Click me',
                          style: textStyle.displayMedium,
                        )),
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
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                elevation: 0.0, //No shadow
              ),
            ),
          ]),
        );
      },
    );
  }
}
