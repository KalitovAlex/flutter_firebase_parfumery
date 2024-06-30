import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class price_widget extends StatelessWidget {
  const price_widget({
    super.key,
    required this.textStyle,
    required this.title, 
    required this.price,
  });
  final String title;
  final String price;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 3.5.w,right: 3.5.w,top: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: textStyle.titleSmall,),
          Text('$price \$' ,style: textStyle.titleSmall,)
        ],
      ),
    );
  }
}