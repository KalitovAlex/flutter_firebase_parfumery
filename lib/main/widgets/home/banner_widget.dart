import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sizer/sizer.dart';

import '../../../core/globals.dart';

class banner_widget extends StatelessWidget {
  const banner_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: mainRepository.bannersReference.snapshots(), builder: (context, snapshots){
      if(snapshots.hasData){
        return 
            SizedBox(
              height: 18.h,
              width: 90.w,
              child: PageView.builder(itemCount: snapshots.data!.docs.length,itemBuilder: (context , indext){
                return Image.network(snapshots.data!.docs[indext]['image_url'],);
              }),
        );
      }
      else{
       return Center(child: LoadingAnimationWidget.inkDrop(color: Colors.green, size: 30));
      }
    });
  }
}
