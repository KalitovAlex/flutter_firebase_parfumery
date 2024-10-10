import 'package:auto_route/auto_route.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/auth/bloc/google/google_bloc.dart';
import 'package:flutter_firebase_parfumery/core/routes/routes.gr.dart';
import 'package:flutter_firebase_parfumery/widgets/show_loading_circle.dart';
import 'package:sizer/sizer.dart';

import '../../core/main/globals.dart';
import '../../core/styles/widget/button_styles.dart';
import '../../core/styles/widget/text_styles.dart';
import '../../widgets/show_snack_bar.dart';

@RoutePage()
class GoogleRegScreen extends StatelessWidget {
  GoogleRegScreen({super.key, required uid});
  String? uid;
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final blocCommand = BlocProvider.of<GoogleBloc>(context);
    return BlocConsumer<GoogleBloc, GoogleState>(
      listener: (context, state) {
        if (state is GoogleLoading) {
          showLoadingCircle(context);
        }
        if (state is GoogleLoaded) {
          Navigator.pop(context);
          AutoRouter.of(context).push(HomeRoute(response: recomendationList));
          ScaffoldMessenger.of(context)
            ..clearMaterialBanners()
            ..showSnackBar(materialBanner('Хорошо',
                'Вы успешно вошли в систему, удачи!', ContentType.success));
        }
        if (state is GoogleFailure) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context)
            ..clearMaterialBanners()
            ..showSnackBar(materialBanner(
                'Проблема',
                'У нас могут быть проблемы с сервером, попробуйте войти снова, мы все исправим в ближайшее время',
                ContentType.failure));
        }
      },
      builder: (context, state) {
        return Scaffold(
            body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/background_main.png',
                    ),
                    fit: BoxFit.cover)),
            padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 35.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Подтверждение Google',
                  style: textStylePicker(context).headlineLarge,
                ),
                Text('Присоединяйтесь к сообществу лучшей платформы',
                    style: textStylePicker(context).labelMedium),
                Container(
                  margin: EdgeInsets.only(top: 2.h),
                  decoration: authTextStyles,
                  height: 6.h,
                  child: TextFormField(
                    controller: _fullNameController,
                    decoration: textFormFieldRegistrationDecoration(
                        CupertinoIcons.person_fill, 'Полное имя'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2.h),
                  decoration: authTextStyles,
                  height: 6.h,
                  child: TextFormField(
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    maxLength: 11,
                    controller: _phoneNumberController,
                    decoration: textFormFieldRegistrationDecoration(
                        CupertinoIcons.person_fill, 'Номер телефона'),
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
                        if (_fullNameController.text.isNotEmpty &&
                            _phoneNumberController.text.isNotEmpty) {
                          blocCommand.add(GoogleEvent(
                              fullName: _fullNameController.text,
                              phoneNumber: _phoneNumberController.text));
                        } else {
                          ScaffoldMessenger.of(context)
                            ..clearSnackBars()
                            ..showSnackBar(materialBanner(
                                'Упс',
                                'Заполните все поля правильно, возможно, вы где-то ошиблись',
                                ContentType.failure));
                        }
                      },
                      child: Text(
                        'Зарегистрироваться',
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
