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
            SizedBox(
              height: 2.h,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Открывая мир ',
                      style: Theme.of(context).textTheme.titleLarge),
                  TextSpan(
                      text: 'Красоты \n   и Косметики ',
                      style: textStylePicker(context).headlineLarge),
                  TextSpan(
                      text: 'Продуктов',
                      style: Theme.of(context).textTheme.titleLarge)
                ])),
            SizedBox(
              height: 4.h,
            ),
            Text(
              'Просматривайте последние стили от лучших брендов',
              style: textStylePicker(context)
                  .labelMedium
                  .copyWith(fontSize: 10.sp),
            ),
            Text(
              'Получайте персонализированные рекомендации',
              style: textStylePicker(context)
                  .labelMedium
                  .copyWith(fontSize: 10.sp),
            ),
            Text(
              'Наслаждайтесь быстрой и бесплатной доставкой',
              style: textStylePicker(context)
                  .labelMedium
                  .copyWith(fontSize: 10.sp),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              width: 90.w,
              decoration: auth_button_container,
              child: TextButton(
                  onPressed: () {
                    AutoRouter.of(context).push(RegisterRoute());
                  },
                  child: Text(
                    'Давайте начнем',
                    style: textStylePicker(context).displayMedium,
                  )),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Уже есть аккаунт?',
                  style: textStylePicker(context).titleSmall,
                ),
                TextButton(
                    onPressed: () {
                      AutoRouter.of(context).push(const AuthRoute());
                    },
                    child: const Text('Войти',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)))
              ],
            )
          ],
        ),
      ),
    );
  }
}
