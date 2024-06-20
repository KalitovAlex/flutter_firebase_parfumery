import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/core/styles/widget/button_styles.dart';
import 'package:flutter_firebase_parfumery/main/models/recomendation/recommendation.dart';
import 'package:flutter_firebase_parfumery/widgets/show_snack_bar.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sizer/sizer.dart';

class ItemCardWidget extends StatelessWidget {
  const ItemCardWidget({super.key, required this.currentItem,required this.index});
  final Recommendation  currentItem;
  final int index;

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 237, 237, 237),
          body: Column(
            children: [
              SizedBox(
                height: 40.h,
                width: double.infinity,
                child: PageView.builder(itemCount: currentItem.picUrls!.length,itemBuilder: (context, index){
                  return Container(padding: EdgeInsets.only(right: 4.w,left: 4.w,top: 2.h),child: ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.network(currentItem.picUrls![index],fit: BoxFit.fill,)));
                }),
              ),
              SizedBox(height: 1.h,),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 6.w,right: 6.w,top: 1.5.h),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(currentItem.title!, style: textStylePicker(context).titleMedium,),
                              Text(currentItem.rating.toString(), style: textStylePicker(context).headlineMedium,)
                            ],
                          ),
                          SizedBox(height: 1.h,),
                          Text(currentItem.desc!),
                          SizedBox(height: 2.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Total Price", style: textStylePicker(context).titleMedium,),
                                  Text(' \$ ${currentItem.price}.00',style: textStylePicker(context).headlineMedium,)
                                ],
                              ),Container(width: 45.w,decoration: auth_button_container,child: ValueListenableBuilder(
                                builder: (BuildContext context, box, Widget? child) {  
                                return TextButton(onPressed: ()  {
                                   box.put(currentItem.id, currentItem);
                                    Navigator.of(context).pop();
                                    ScaffoldMessenger.of(context)..clearSnackBars..showSnackBar(materialBanner('Succesfuly', 'You add ${currentItem.title} to cart', ContentType.success));
                                  }, child: Text('Add to cart',style: textStylePicker(context).displayMedium,));
                              }, valueListenable: Hive.box('cart').listenable(),),)
                            ],
                          ),
                          SizedBox(height: 4.h,)
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }
  }