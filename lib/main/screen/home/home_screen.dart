import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/core/routes/routes.gr.dart';
import 'package:flutter_firebase_parfumery/main/widgets/home/banner_widget.dart';
import 'package:flutter_firebase_parfumery/main/widgets/home/categories/categories_widget.dart';
import 'package:flutter_firebase_parfumery/main/widgets/home/recomendation_widget.dart';
import 'package:sizer/sizer.dart';

import '../../models/recomendation/recommendation.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key, required this.response});
  List<Recommendation> response;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 7.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'С возвращением',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      userModel.username!,
                      style: textStyle.titleMedium,
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          AutoRouter.of(context)
                              .push(const NotificationRoute());
                        },
                        icon: Image.asset(
                          'assets/bell_icon.png',
                          width: 10.w,
                          height: 6.h,
                        )),
                    IconButton(
                        onPressed: () {
                          AutoRouter.of(context).push(const SearchRoute());
                        },
                        icon: Image.asset(
                          'assets/search_icon.png',
                          width: 10.w,
                          height: 6.h,
                        ))
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 0.5.h,
            ),
            const banner_widget(),
            Padding(
              padding: EdgeInsets.only(bottom: 1.h,top: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Категории',
                    style: textStylePicker(context).titleMedium,
                  ),
                ],
              ),
            ),
            const categories_widget(),
            recomendation_widget(
              recomendation: widget.response,
            )
          ],
        ),
      ),
    );
  }
}
