import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/main/widgets/favorites/favorites_widget.dart';
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Column(
        children: [
        favorites_widget()
        ],
      ),
    );
  }
}