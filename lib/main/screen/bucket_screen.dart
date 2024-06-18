import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sizer/sizer.dart';

class BucketScreen extends StatelessWidget {
  const BucketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: mainRepository.recomendationReference.snapshots(),
      builder: (context, snapshots) {
        return ValueListenableBuilder(
          builder: (BuildContext context, box, Widget? child) { 
          return Scaffold(
              appBar: AppBar(title: Text('Cart',style: textStylePicker(context).titleMedium,),),
              body:  Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        // final isFavorite = box.get(index) != null;
                        final currentCartElement = snapshots.data!.docs[index];
                        return Container(
                          decoration: BoxDecoration(color: Colors.white70,boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2),offset: const Offset(0, 4) ,blurRadius: 10)]),
                          height: 30.h,
                          margin: EdgeInsets.only(bottom: 3.h),
                          width: 100.w,
                          child: Column(
                            children: [
                            Text(currentCartElement['title'])
                            
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
      }
    );
  }
}