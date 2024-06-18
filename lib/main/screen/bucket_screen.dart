import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sizer/sizer.dart';

class BucketScreen extends StatelessWidget {
  const BucketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
          builder: (BuildContext context, box, Widget? child) { 
          return Scaffold(
              appBar: AppBar(title: Text('Cart',style: textStylePicker(context).titleMedium,),),
              body:  Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: box.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(color: Colors.white70,boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2),offset: const Offset(0, 4) ,blurRadius: 10)]),
                          height: 30.h,
                          margin: EdgeInsets.only(bottom: 3.h),
                          width: 100.w,
                          child: Column(
                            children: [
                            
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );}, valueListenable: Hive.box('cart').listenable(),
        );
      }}