import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/main/consants.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/main/models/recomendation/recommendation.dart';
import 'package:flutter_firebase_parfumery/main/widgets/cart/item_card_widget.dart';
import 'package:flutter_firebase_parfumery/widgets/loading_widget.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sizer/sizer.dart';

class ProductCardWidget extends StatelessWidget {
  final Recommendation currentRecomendation;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;
  final int index;

  const ProductCardWidget({
    super.key,
    required this.currentRecomendation,
    required this.isFavorite,
    required this.onFavoriteToggle,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBarModalBottomSheet(
          useRootNavigator: true,
          context: context,
          builder: (context) => ItemCardWidget(
              currentItem: currentRecomendation,
              index: index), // Передаем индекс
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: CachedNetworkImage(
          imageUrl: currentRecomendation.picUrls!.isNotEmpty
              ? currentRecomendation.picUrls!.first.toString()
              : '', // Проверка на пустоту
          placeholder: (context, url) {
            return const loadingWidget();
          },
          errorWidget: (context, url, error) {
            return Image.asset(errorIcon);
          },
          imageBuilder: (context, imageProvider) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: SizedBox(
                          height: 19.h,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        child: IconButton(
                          onPressed: () {
                            onFavoriteToggle(); 
                          },
                          icon: isFavorite
                              ? const Icon(Icons.favorite, color: Colors.red)
                              : const Icon(Icons.favorite_border_outlined,
                                  color: Colors.white70),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 0.7.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$${currentRecomendation.price}',
                        style: textStylePicker(context).titleSmall), // Упрощено
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.yellow),
                        Text(currentRecomendation.rating.toString(),
                            style: const TextStyle(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
                Text(currentRecomendation.title ?? '',
                    style: textStylePicker(context)
                        .titleSmall), // Проверка на null
              ],
            );
          },
        ),
      ),
    );
  }
}
