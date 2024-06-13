import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/globals.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sizer/sizer.dart';

class recomendation_widget extends StatelessWidget {
  const recomendation_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: mainRepository.recomendationReference.snapshots(), builder: (context, snapshots){
      if(snapshots.hasData){
        return 
            Expanded(
              child: GridView.builder(shrinkWrap: true,scrollDirection: Axis.vertical,itemCount: snapshots.data!.docs.length,itemBuilder: (context , index){
                final currentRecomendation = snapshots.data!.docs[index];
                return Padding(
                  padding: const EdgeInsets.all(6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(child: Image.network(currentRecomendation['pic_url']),),
                          Positioned(child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined,color: Colors.white70,)))
                        ],
                      ),
                      SizedBox(height: 0.7.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                        Text('\$' + currentRecomendation['price'], style: textStylePicker(context).titleSmall,),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.yellow,),
                            Text(currentRecomendation['rating'],style: const TextStyle(fontSize: 16),)
                          ],
                        )
                      ],),
                      Text(currentRecomendation['title'], style: textStylePicker(context).titleSmall,)
                    ],
                  ),
                );
              }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 2,childAspectRatio: 0.75),)
        );
      }
      else{
       return Center(child: LoadingAnimationWidget.inkDrop(color: Colors.green, size: 30));
      }
    });
  }
}