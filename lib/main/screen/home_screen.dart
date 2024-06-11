import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/globals.dart';
import 'package:sizer/sizer.dart';
@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    getall();
  }
  getall ()async{
    await mainRepository.getAllProducts();
  }
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 5.w,right: 5.w,top: 7.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Text('Welcome back', style: TextStyle(fontSize: 18),),
                   Text(userModel.username!, style: textStyle.titleMedium,)
                  ],
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Image.asset('assets/bell_icon.png',width: 10.w,height: 6.h,)),
                    IconButton(onPressed: (){}, icon: Image.asset('assets/search_icon.png', width: 10.w,height: 6.h,))
                  ],
                ),
              ],
            ),
            SizedBox(height: 2.h,),
            // PageView.builder(
            //   itemCount: mainModel.banner!.length,
            //   itemBuilder: (context, index){
            //     final model = mainModel.banner![index];
            //     return banner_main(img_url: model.url!);
            // })
          ],
        ),
      ),
    );
  }
}
