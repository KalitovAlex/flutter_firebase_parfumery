import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/main/consants.dart';
import 'package:flutter_firebase_parfumery/widgets/loading_widget.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sizer/sizer.dart';

import '../../../core/main/globals.dart';

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
                return CachedNetworkImage(imageUrl: snapshots.data!.docs[indext]['image_url'], imageBuilder: (context, imageProvider) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: imageProvider)
                  ),
                );
                },
                placeholder: (context, url) {
                  return const loadingWidget();
                },
                errorWidget: (context, url, error) {
                  return Image.asset(errorIcon);
                },
                );
              }),
        );
      }
      else{
       return Center(child: LoadingAnimationWidget.inkDrop(color: Colors.green, size: 30));
      }
    });
  }
}
