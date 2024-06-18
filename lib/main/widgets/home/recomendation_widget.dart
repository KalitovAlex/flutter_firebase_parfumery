import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/globals.dart';
import 'package:flutter_firebase_parfumery/main/models/recommendation.dart';
import 'package:flutter_firebase_parfumery/main/widgets/cart/item_card_widget.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sizer/sizer.dart';

class recomendation_widget extends StatefulWidget {
  const recomendation_widget({
    super.key,
    required this.recomendation
  });
  final List<Recommendation> recomendation;

  @override
  State<recomendation_widget> createState() => _recomendation_widgetState();
}

class _recomendation_widgetState extends State<recomendation_widget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: mainRepository.recomendationReference.snapshots(), builder: (context, snapshots){
      if(snapshots.connectionState == ConnectionState.none){
        return const Center(child: Text('please try again,your internet have error'),);
      }
      else if(snapshots.hasData){
        return 
            ValueListenableBuilder(
              valueListenable: Hive.box('favorite').listenable(),
              builder: (BuildContext context, Box<dynamic> box, Widget? child) {  
              return Expanded(
                child: GridView.builder(shrinkWrap: true,scrollDirection: Axis.vertical,itemCount: snapshots.data!.docs.length,itemBuilder: (context , index){
                  final isFavorite = box.get(index) != null;
                  final currentRecomendation = widget.recomendation[index];
                  // final QuerySnapshot snapshot = mainRepository.recomendationReference.doc(currentRecomendation.id).collection('pic_urls').ge;
                  return GestureDetector(
                    onTap: (){
                    showBarModalBottomSheet(useRootNavigator: true,context: context, builder: (context) => ItemCardWidget(currentItem: currentRecomendation));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            width: double.infinity,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                          borderRadius: BorderRadius.circular(30),
                                            child: SizedBox(
                                              height: 20.h,
                                              child: Image.network(
                                                fit: BoxFit.fill,
                                                currentRecomendation.imageUrls!.first.toString()
                                              ),
                                            ),
                                        ),
                                  Positioned(child: IconButton(onPressed: () async{
                                      if(isFavorite){
                                      await box.delete(index);
                                      }
                                      else{
                                      await box.put(index, currentRecomendation.title);
                                      }
                                   setState(() {
                                      
                                    });
                                    }, 
                                    icon: isFavorite ? const Icon(Icons.favorite,color: Colors.red,) : const Icon(Icons.favorite_border_outlined,color: Colors.white70,) ))
                                ],
                              ),
                            ),
                          SizedBox(height: 0.7.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                            Text('\$' + currentRecomendation.price.toString(), style: textStylePicker(context).titleSmall,),
                            Row(
                              children: [
                                const Icon(Icons.star, color: Colors.yellow,),
                                Text(currentRecomendation.rating.toString(),style: const TextStyle(fontSize: 16),)
                              ],
                            )
                          ],),
                          Text(currentRecomendation.title!, style: textStylePicker(context).titleSmall,)
                        ],
                      ),
                    ),
                  );
                }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 1,childAspectRatio: 0.75),)
              );
      });
      }
      else{
       return Center(child: LoadingAnimationWidget.inkDrop(color: Colors.green, size: 30));
      }
    });
  }
}