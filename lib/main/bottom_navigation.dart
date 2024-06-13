import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/main/screen/home_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
@RoutePage()
class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  List<PersistentTabConfig> _tabs() => [
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
            inactiveIcon: const Icon(CupertinoIcons.compass,color: Colors.white,),
            icon: const Icon(CupertinoIcons.compass_fill,color: Colors.white,),
          ),
        ),
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
            inactiveIcon: const Icon(CupertinoIcons.cart,color: Colors.white,),
            icon: const Icon(CupertinoIcons.cart_fill,color: Colors.white,),
          ),
        ),
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
            inactiveIcon: const Icon(Icons.favorite_outline,color: Colors.white,),
            icon: const Icon(Icons.favorite,color: Colors.white,),
          ),
        ),
        PersistentTabConfig(screen: const HomeScreen(), item: ItemConfig(
          inactiveIcon: const Icon(CupertinoIcons.doc,color: Colors.white,),
          icon: const Icon(CupertinoIcons.doc_fill,color: Colors.white,))),
        PersistentTabConfig(screen: const HomeScreen(), item: ItemConfig(icon: const Icon(CupertinoIcons.person_fill,color: Colors.white,),inactiveIcon: const Icon(CupertinoIcons.person, color: Colors.white,)))
      ];

  @override
  Widget build(BuildContext context) => PersistentTabView(
        margin: const EdgeInsets.only(bottom: 1,left: 15,right: 15),
        avoidBottomPadding: true,
        navBarHeight: 70,
        resizeToAvoidBottomInset: true,
        tabs: _tabs(),
        navBarBuilder: (navBarConfig) => Style1BottomNavBar(
          navBarDecoration: const NavBarDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),bottomRight: Radius.circular(15) ,bottomLeft: Radius.circular(15)),color: Colors.green),
          navBarConfig: navBarConfig,
        ),
      );
}