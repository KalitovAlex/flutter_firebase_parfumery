import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/main/widgets/cart/item_card_widget/style/cart_decoration.dart';
import 'package:flutter_firebase_parfumery/widgets/loading_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../widgets/failure_widget.dart';

@RoutePage()
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  void initState() {
    super.initState();
    getNotifications();
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Notifications',
              style: theme.textTheme.titleMedium,
            ),
          ),
          body: notificationsList.isEmpty ? const FailureWidget(): ListView.builder(
            itemCount: notificationsList.length,
            itemBuilder: (BuildContext context, int index) {
              final currentNotification = notificationsList[index];
              return Container(decoration: cartDecoration,width: double.infinity,height:30.h,margin: EdgeInsets.only(left: 5.w,right: 5.w,top: 2.h),child:  Row(
                children: [
                  CachedNetworkImage(
                      imageUrl: currentNotification.picUrls!,
                      imageBuilder:(context, imageProvider) {
                        return ClipRRect(borderRadius: BorderRadius.circular(30),child: Container(width: 35.w, height: 25.h,decoration: BoxDecoration(image: DecorationImage(image: imageProvider,fit: BoxFit.cover))));
                      },
                      placeholder: (context, url) {
                        return const loadingWidget();
                      },
                    ),
                  SizedBox(width: 3.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 2.h,),
                      Text(currentNotification.title!, style: theme.textTheme.titleMedium,),
                      SizedBox(height: 20.h, width: 51.w,child: Text(currentNotification.desc!, softWrap: true, overflow: TextOverflow.fade,maxLines: 10,),),
                    ],
                  )
                ],
              ),);
            },
          )
        );
  }
}

