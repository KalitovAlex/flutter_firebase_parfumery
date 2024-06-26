import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/main/widgets/favorites/favorites_widget.dart';
@RoutePage()
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favorites', style: Theme.of(context).textTheme.titleMedium,),centerTitle: false,),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        favorites_widget(),
        ],
      ),
    );
  }
}