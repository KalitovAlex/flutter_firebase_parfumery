import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/main/models/recomendation/recommendation.dart';
import 'package:flutter_firebase_parfumery/main/widgets/product/product_card_widget.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class recomendation_widget extends StatefulWidget {
  const recomendation_widget({
    super.key,
    required this.recomendation,
  });
  final List<Recommendation> recomendation;

  @override
  State<recomendation_widget> createState() => _recomendation_widgetState();
}

class _recomendation_widgetState extends State<recomendation_widget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: mainRepository.recomendationReference.snapshots(),
      builder: (context, snapshots) {
        if (snapshots.connectionState == ConnectionState.none) {
          return const Center(
              child: Text('please try again,your internet have error'));
        } else if (snapshots.hasData) {
          return ValueListenableBuilder(
            valueListenable: Hive.box('favorite').listenable(), // Ensure consistent box name
            builder: (BuildContext context, Box<dynamic> box, Widget? child) {
              return Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: snapshots.data!.docs.length,
                  itemBuilder: (context, index) {
                    final currentRecomendation = widget.recomendation[index];
                    final isFavorite = box.get(currentRecomendation.title) != null; // Use title as key

                    return ProductCardWidget(
                      index: index,
                      currentRecomendation: currentRecomendation,
                      isFavorite: isFavorite,
                      onFavoriteToggle: () async {
                        if (isFavorite) {
                          await box.delete(currentRecomendation.title); // Use title as key
                        } else {
                          await box.put(currentRecomendation.title, currentRecomendation.title); // Use title as key
                        }
                        setState(() {});
                      },
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1,
                    childAspectRatio: 0.75,
                  ),
                ),
              );
            },
          );
        } else {
          return Center(
              child: LoadingAnimationWidget.inkDrop(
                  color: Colors.green, size: 30));
        }
      },
    );
  }
}
