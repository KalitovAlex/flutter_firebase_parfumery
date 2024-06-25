import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/main/consants.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/widgets/loading_widget.dart';
import 'package:hive_flutter/hive_flutter.dart';
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
    return ValueListenableBuilder(
              valueListenable: Hive.box('favorite').listenable(),
              builder: (BuildContext context, box, Widget? child) {
                if(box.isEmpty){
                  return Padding(
                    padding:  EdgeInsets.only(top: 50.h),
                    child: Center(child: Text('Your favorite is empty', style: textStylePicker(context).titleMedium,),
                  ));
                }
                else{
                return ListView.builder(shrinkWrap: true,scrollDirection: Axis.vertical,itemCount: recomendationList.length,itemBuilder: (context , index){
                  final isFavorite = box.get(index) != null;
                  final currentFavorites = recomendationList[index];
                  if(!isFavorite){
                    return const Center();
                  } else{
                  return CachedNetworkImage(
                    imageUrl: currentFavorites.picUrls!.first,
                    placeholder: (context, url) {
                      return const loadingWidget();
                    },
                    errorWidget: (context, url, error) {
                      return Image.asset(errorIcon);
                    },
                    imageBuilder: (context, imageProvider) {
                      return Container(
                      width: double.infinity,
                      height: 18.h,
                      padding: const EdgeInsets.all(6),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Stack(
                              children: [
                                ClipRRect(borderRadius: BorderRadius.circular(30),child: Container(height: 25.h,width: 40.w,decoration: BoxDecoration(image: DecorationImage(image: imageProvider,fit: BoxFit.cover)),),),
                                Positioned(child: IconButton(onPressed: () async{
                                  if(isFavorite){
                                  await box.delete(index);
                                  }
                                  else{
                                  await box.put(index, currentFavorites.title);
                                  }
                                  }, 
                                  icon: isFavorite ? const Icon(Icons.favorite,color: Colors.red,) : const Icon(Icons.favorite_border_outlined,color: Colors.white70,) ))
                              ],
                            ),
                          ),
                          SizedBox(width: 3.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 1.5.h),
                              Text(currentFavorites.title!, style: textStylePicker(context).titleMedium,),
                              Row(
                                children: [
                                Text('\$' + currentFavorites.price.toString(), style: textStylePicker(context).titleSmall,),
                                SizedBox(width: 3.w,),
                                Row(
                                  children: [
                                    const Icon(Icons.star, color: Colors.yellow,),
                                    Text(currentFavorites.rating.toString(),style: const TextStyle(fontSize: 16),)
                                  ],
                                )
                              ],),
                            ],
                          ),
                        ],
                      ),
                    );
                    }
                  );}
                });
      }});
      }}