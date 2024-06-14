import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ItemCardWidget extends StatelessWidget {
  const ItemCardWidget({super.key, required this.currentItem});
  final QueryDocumentSnapshot<Map<String, dynamic>>  currentItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 5.w,right: 5.w),
        child: Column(
          children: [
          ],
        ),
      ),
    );
  }
}