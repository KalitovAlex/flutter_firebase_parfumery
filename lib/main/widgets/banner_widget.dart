// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

class banner_main extends StatelessWidget {
  String img_url;
  banner_main({
    super.key,
    required this.img_url,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity,height: 20.h,child: Image.network(img_url));
  }
}
