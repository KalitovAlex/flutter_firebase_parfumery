import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/globals.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sizer/sizer.dart';

class categories_widget extends StatelessWidget {
  const categories_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: mainRepository.categoriesReference.snapshots(), builder: (context, snapshots){
      if(snapshots.hasData){
        return 
            SizedBox(
              height: 12.h,
              width: 100.w,
              child: ListView.separated(scrollDirection: Axis.horizontal,itemCount: snapshots.data!.docs.length,itemBuilder: (context , indext){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width: 18.w,height: 8.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: const Color.fromARGB(255, 190, 190, 190).withOpacity(0.2) ),child: ClipRRect(borderRadius: BorderRadius.circular(100),child: Image.network(snapshots.data!.docs[indext]['image_url'],fit: BoxFit.scaleDown,)),),
                    SizedBox(height: 0.5.h,),
                    Text(snapshots.data!.docs[indext]['title'],style: textStylePicker(context).titleSmall,)
                  ],
                );
              }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 10.w,); },),
        );
      }
      else{
       return Center(child: LoadingAnimationWidget.inkDrop(color: Colors.green, size: 30));
      }
    });
  }
}