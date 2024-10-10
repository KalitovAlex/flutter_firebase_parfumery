import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_parfumery/main/models/recomendation/recommendation.dart';
import 'package:flutter_firebase_parfumery/main/widgets/product/product_card_widget.dart';
import 'package:hive_flutter/hive_flutter.dart';

@RoutePage()
class SubCategoriesScreen extends StatelessWidget {
  final String? subCategoryName;
  const SubCategoriesScreen({super.key, required this.subCategoryName});

  @override
  Widget build(BuildContext context) {
    if (subCategoryName == null) {
      return const Center(child: Text('Subcategory name is not provided.'));
    }

    return StreamBuilder<QuerySnapshot>(
      stream: mainRepository.recomendationReference
          .where('category', isEqualTo: subCategoryName)
          .snapshots(),
      builder: (context, snapshots) {
        if (snapshots.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshots.hasError) {
          return Center(child: Text('Error: ${snapshots.error}'));
        }
        if (!snapshots.hasData || snapshots.data!.docs.isEmpty) {
          return const Center(child: Text('No products found.'));
        }

        final products = snapshots.data!.docs;

        return Scaffold(
          appBar: AppBar(
            title: Text(subCategoryName!),
          ),
          body: ValueListenableBuilder(
            valueListenable: Hive.box('favorite')
                .listenable(), // Changed 'Favorite' to 'favorite'
            builder: (context, Box<dynamic> box, _) {
              return ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  final currentRecomendation = Recommendation.fromJson(
                      product.data() as Map<String, dynamic>);
                  final isFavorite = box.get(currentRecomendation.title) !=
                      null; // Check if the product is favorite

                  return ProductCardWidget(
                    currentRecomendation: currentRecomendation,
                    isFavorite: isFavorite,
                    onFavoriteToggle: () async {
                      if (isFavorite) {
                        await box.delete(currentRecomendation
                            .title); // Remove from favorites
                      } else {
                        await box.put(currentRecomendation.title,
                            currentRecomendation.title); // Add to favorites
                      }
                    },
                    index: index,
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
