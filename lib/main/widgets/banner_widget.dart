import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

class banner_main extends StatelessWidget {
  const banner_main({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity,height: 20.h,child: Image.network('https://firebasestorage.googleapis.com/v0/b/project173-2.appspot.com/o/3%2Fbanner1.png?alt=media&token=fa8f8a1b-57cd-4300-a119-9c1bb9172916'));
  }
}