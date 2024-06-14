import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/globals.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sizer/sizer.dart';

class recomendation_widget extends StatefulWidget {
  const recomendation_widget({
    super.key,
  });

  @override
  State<recomendation_widget> createState() => _recomendation_widgetState();
}

class _recomendation_widgetState extends State<recomendation_widget> {
  @override
  void initState() {
    super.initState();
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: mainRepository.recomendationReference.snapshots(), builder: (context, snapshots){
      if(snapshots.hasData){
        return 
            ValueListenableBuilder(
              valueListenable: Hive.box('favorite').listenable(),
              builder: (BuildContext context, Box<dynamic> box, Widget? child) {  
              return Expanded(
                child: GridView.builder(shrinkWrap: true,scrollDirection: Axis.vertical,itemCount: snapshots.data!.docs.length,itemBuilder: (context , index){
                  final isFavorite = box.get(index) != null;
                  final currentRecomendation = snapshots.data!.docs[index];
                  return GestureDetector(
                    onTap: (){
                    showBarModalBottomSheet(useRootNavigator: true,context: context, builder: (context) => const Scaffold());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(child: Image.network(currentRecomendation['pic_url']),),
                              Positioned(child: IconButton(onPressed: () async{
                                  if(isFavorite){
                                  await box.delete(index);
                                  }
                                  else{
                                  await box.put(index, currentRecomendation['title']);
                                  }
                               setState(() {
                                  
                                });
                                }, 
                                icon: isFavorite ? const Icon(Icons.favorite,color: Colors.red,) : const Icon(Icons.favorite_border_outlined,color: Colors.white70,) ))
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
                    ),
                  );
                }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 2,childAspectRatio: 0.75),)
              );
      });
      }
      else{
       return Center(child: LoadingAnimationWidget.inkDrop(color: Colors.green, size: 30));
      }
    });
  }
}