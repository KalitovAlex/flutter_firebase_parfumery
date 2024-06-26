import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/routes/routes.gr.dart';
import 'package:flutter_firebase_parfumery/main/models/recomendation/recommendation.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:sizer/sizer.dart';


@RoutePage()
class BottomNavigation extends StatefulWidget {

  BottomNavigation({super.key, required this.response});
  List<Recommendation> response; 

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  List<ItemConfig> _tabs() => [
          ItemConfig(
            inactiveIcon: const Icon(CupertinoIcons.compass,color: Colors.white,),
            icon: const Icon(CupertinoIcons.compass_fill,color: Colors.white,),
        ),
        ItemConfig(
            inactiveIcon: const Icon(CupertinoIcons.cart,color: Colors.white,),
            icon: const Icon(CupertinoIcons.cart_fill,color: Colors.white,),
          ),
          ItemConfig(
            inactiveIcon: const Icon(Icons.favorite_outline,color: Colors.white,),
            icon: const Icon(Icons.favorite,color: Colors.white,),
          ),
          ItemConfig(
          inactiveIcon: const Icon(CupertinoIcons.doc,color: Colors.white,),
          icon: const Icon(CupertinoIcons.doc_fill,color: Colors.white,)),
          ItemConfig(icon: const Icon(CupertinoIcons.person_fill,color: Colors.white,),inactiveIcon: const Icon(CupertinoIcons.person, color: Colors.white,))
      ];

  @override
  Widget build(BuildContext context){
    return PopScope(
    canPop: false,
    child: AutoTabsRouter(
      routes: [
        HomeRoute(response: widget.response),
        const BucketRoute(),
        const FavoriteRoute(),
        const HistoryRoute(),
        const ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          bottomNavigationBar:  Card(
            color: Colors.transparent,
            margin: EdgeInsets.only(bottom: 2.h, left: 5.w, right: 5.w),
            child: Style1BottomNavBar(
                  navBarDecoration:  NavBarDecoration(padding: EdgeInsets.only(top: 3.h),borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),bottomRight: Radius.circular(15) ,bottomLeft: Radius.circular(15)),color: Colors.green),
                  navBarConfig: NavBarConfig(selectedIndex: tabsRouter.activeIndex, items: _tabs(), onItemSelected: (index) => openPage(index,tabsRouter)),
                ),
          ),
          body: child,
        );
      },
    )
  );}

  void openPage(int index, TabsRouter tabRouter){
    tabRouter.setActiveIndex(index);
  }
}