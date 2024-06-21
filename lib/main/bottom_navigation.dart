import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/main/models/recomendation/recommendation.dart';
import 'package:flutter_firebase_parfumery/main/screen/bucket_screen.dart';
import 'package:flutter_firebase_parfumery/main/screen/favorite_screen.dart';
import 'package:flutter_firebase_parfumery/main/screen/home_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

@RoutePage()
class BottomNavigation extends StatefulWidget {
  BottomNavigation({super.key, required this.response});
  List<Recommendation> response; 

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  void initState() {
    super.initState();
    setState(() {
      
    });
  }
  List<PersistentTabConfig> _tabs() => [
        PersistentTabConfig(
          screen: HomeScreen(response: widget.response,),
          item: ItemConfig(
            inactiveIcon: const Icon(CupertinoIcons.compass,color: Colors.white,),
            icon: const Icon(CupertinoIcons.compass_fill,color: Colors.white,),
          ),
        ),
        PersistentTabConfig(
          screen: const BucketScreen(),
          item: ItemConfig(
            inactiveIcon: const Icon(CupertinoIcons.cart,color: Colors.white,),
            icon: const Icon(CupertinoIcons.cart_fill,color: Colors.white,),
          ),
        ),
        PersistentTabConfig(
          screen: const FavoriteScreen(),
          item: ItemConfig(
            inactiveIcon: const Icon(Icons.favorite_outline,color: Colors.white,),
            icon: const Icon(Icons.favorite,color: Colors.white,),
          ),
        ),
        PersistentTabConfig(screen: const Scaffold(), item: ItemConfig(
          inactiveIcon: const Icon(CupertinoIcons.doc,color: Colors.white,),
          icon: const Icon(CupertinoIcons.doc_fill,color: Colors.white,))),
        PersistentTabConfig(screen: const Scaffold(), item: ItemConfig(icon: const Icon(CupertinoIcons.person_fill,color: Colors.white,),inactiveIcon: const Icon(CupertinoIcons.person, color: Colors.white,)))
      ];

  @override
  Widget build(BuildContext context) => PopScope(
    child: PersistentTabView(
          margin: const EdgeInsets.only(bottom: 1,left: 15,right: 15),
          avoidBottomPadding: true,
          navBarHeight: 70,
          resizeToAvoidBottomInset: true,
          tabs: _tabs(),
          navBarBuilder: (navBarConfig) => Style1BottomNavBar(
            navBarDecoration: const NavBarDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),bottomRight: Radius.circular(15) ,bottomLeft: Radius.circular(15)),color: Colors.green),
            navBarConfig: navBarConfig,
          ),
        ),
  );
}