import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/globals.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sizer/sizer.dart';

class favorites_widget extends StatefulWidget {
  const favorites_widget({
    super.key,
  });

  @override
  State<favorites_widget> createState() => _recomendation_widgetState();
}

class _recomendation_widgetState extends State<favorites_widget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: mainRepository.recomendationReference.snapshots(), builder: (context, snapshots){
      if(snapshots.hasData){
        return 
            Expanded(
              child: GridView.builder(shrinkWrap: true,scrollDirection: Axis.vertical,itemCount: snapshots.data!.docs.length,itemBuilder: (context , index){
                final currentRecomendation = snapshots.data!.docs[index];
                return Container(
                  width: double.infinity,
                  height: 30.h,
                  padding: const EdgeInsets.all(6),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(child: Image.network(currentRecomendation['pic_url'],width: 35.w,height: 30.h,),),
                          Positioned(child: IconButton(onPressed: (){
                            setState(() {
                            if(favorite.contains(currentRecomendation.id)){
                            favorite.remove(currentRecomendation.id);
                            }else{
                            favorite.add(currentRecomendation.id);
                            }
                            });
                            }, 
                            icon: favorite.contains(currentRecomendation.id) ? const Icon(Icons.favorite,color: Colors.red,) : const Icon(Icons.favorite_border_outlined,color: Colors.white70,) ))
                        ],
                      ),
                      SizedBox(width: 3.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 1.5.h),
                          Text(currentRecomendation['title'], style: textStylePicker(context).titleMedium,),
                          Text(currentRecomendation['desc'],maxLines: 100,overflow: TextOverflow.clip,softWrap: true),
                          Row(
                            children: [
                            Text('\$' + currentRecomendation['price'], style: textStylePicker(context).titleSmall,),
                            SizedBox(width: 3.w,),
                            Row(
                              children: [
                                const Icon(Icons.star, color: Colors.yellow,),
                                Text(currentRecomendation['rating'],style: const TextStyle(fontSize: 16),)
                              ],
                            )
                          ],),
                        ],
                      ),
                    ],
                  ),
                );
              }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 2.3),)
        );
      }
      else{
       return Center(child: LoadingAnimationWidget.inkDrop(color: Colors.green, size: 30));
      }
    });
  }
}