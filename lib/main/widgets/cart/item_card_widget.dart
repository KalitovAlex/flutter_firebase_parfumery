import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/main/models/recommendation.dart';
import 'package:sizer/sizer.dart';

class ItemCardWidget extends StatelessWidget {
  const ItemCardWidget({super.key, required this.currentItem});
  final Recommendation  currentItem;

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          body: Container(
            padding: EdgeInsets.only(left: 5.w,right: 5.w),
            child: Column(
              children: [
                Text(currentItem.title!)
              ],
            ),
          ),
        );
      }
  }