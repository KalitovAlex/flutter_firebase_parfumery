import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:sizer/sizer.dart';

class BucketScreen extends StatefulWidget {
  const BucketScreen({super.key});

  @override
  State<BucketScreen> createState() => _BucketScreenState();
}

class _BucketScreenState extends State<BucketScreen> {
  @override
  Widget build(BuildContext context) {
          final listIsempty = allCart.isEmpty;
          return Scaffold(
              appBar: AppBar(title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(textAlign: TextAlign.left,'My Cart',style: textStylePicker(context).titleMedium,),
                  Text('${allCart.length} items' , style: textStylePicker(context).titleMedium)
                ],
              ),centerTitle: false,),
              body:  listIsempty ? const Center(child: Text('Cart is empty'),) :
              Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: allCart.length,
                      itemBuilder: (BuildContext context, int index) { 
                        currentCart = allCart[index];
                        return Container(
                          margin: EdgeInsets.only(bottom: 1.5.h,right: 2.w,left: 2.w),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white70,boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2),offset: const Offset(0, 4) ,blurRadius: 10)]),
                          height: 25.h,
                          width: 95.w,
                          child:  Stack(
                            children: [ Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                              Container(padding: EdgeInsets.only(left: 3.w),height: 20.h,width: 35.w,child: ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.network(currentCart.picUrls!.first,fit: BoxFit.cover,))),
                              SizedBox(width: 2.w,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 4.h,),
                                  Text(currentCart.title!,style: textStylePicker(context).titleMedium,),
                                  Row(
                                    children: [
                                      const Icon(Icons.star, color: Colors.yellow,),
                                      Text(currentCart.rating.toString(),style: textStylePicker(context).titleSmall,),
                                      SizedBox(width: 10.w,),
                                      Text('${currentCart.price} \$' ,style: textStylePicker(context).titleSmall,)
                                    ],
                                  ),
                                  SizedBox(height: 3.h,),
                                      Container(
                                        height: 7.h,
                                        width: 50.w,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(255, 228, 228, 228),
                                          borderRadius: BorderRadius.circular(40)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            IconButton(onPressed: (){setState(() {
                                              currentCart.price -= 1;
                                            });}, icon: const Icon(CupertinoIcons.minus_circle_fill, color: Colors.white,)),
                                            Container(width: 20.w,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50)),child: Text(currentCart.count.toString(),style: textStylePicker(context).titleSmall,textAlign: TextAlign.center,)),
                                            IconButton(onPressed: (){
                                              setState(() {
                                                currentCart = currentCart.copyWith(count: currentCart.count + 1);
                                                talker.log(currentCart.count);
                                              });
                                              }, icon: const Icon(Icons.add_circle,color: Colors.white,))
                                          ],
                                        ),
                                      )
                                ],
                              )
                              ],
                            ),
                            Positioned(top: 0.5.h,left: 83.w,child: IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.xmark,)))
                            ]
                          ),
                        );
                      },
                    )
                  ),
                ],
              ),
            );
      }}