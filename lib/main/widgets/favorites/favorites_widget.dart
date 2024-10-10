import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/main/models/recomendation/recommendation.dart';
import 'package:flutter_firebase_parfumery/widgets/loading_widget.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sizer/sizer.dart';

class FavoritesWidget extends StatefulWidget {
  const FavoritesWidget({super.key});

  @override
  State<FavoritesWidget> createState() => _FavoritesWidgetState();
}

class _FavoritesWidgetState extends State<FavoritesWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box('favorite').listenable(),
      builder: (BuildContext context, Box<dynamic> box, Widget? child) {
        final favoriteKeys = box.keys.toList();

        if (favoriteKeys.isEmpty) {
          return Padding(
            padding: EdgeInsets.only(top: 50.h),
            child: Center(
              child: Text(
                'Ваши избранные пусты',
                style: textStylePicker(context).titleMedium,
              ),
            ),
          );
        } else {
          final filteredKeys =
              favoriteKeys.where((key) => key != 'default_image').toList();

          return ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: filteredKeys.length,
            itemBuilder: (context, index) {
              final currentKey = filteredKeys[index];
              final currentFavorites = recomendationList.firstWhere(
                (item) => item.title == currentKey.toString(),
                orElse: () => Recommendation(
                    title: currentKey.toString(),
                    picUrls: [],
                    price: 0,
                    rating: 0),
              );

              if (currentFavorites.picUrls == null ||
                  currentFavorites.picUrls!.isEmpty) {
                return const SizedBox.shrink();
              }

              final imageUrl = currentFavorites.picUrls!.first;

              return CachedNetworkImage(
                imageUrl: imageUrl,
                placeholder: (context, url) {
                  return const loadingWidget();
                },
                errorWidget: (context, url, error) {
                  return const SizedBox.shrink();
                },
                imageBuilder: (context, imageProvider) {
                  final isFavorite = box.get(currentKey) != null;

                  return Container(
                    width: double.infinity,
                    height: 18.h,
                    padding: const EdgeInsets.all(6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  height: 25.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                child: IconButton(
                                  onPressed: () async {
                                    if (isFavorite) {
                                      await box.delete(currentKey);
                                    } else {
                                      await box.put(currentKey, currentKey);
                                    }
                                    setState(() {});
                                  },
                                  icon: isFavorite
                                      ? const Icon(Icons.favorite,
                                          color: Colors.red)
                                      : const Icon(
                                          Icons.favorite_border_outlined,
                                          color: Colors.white70),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 3.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 1.5.h),
                            Text(currentFavorites.title ?? 'Неизвестно',
                                style: textStylePicker(context).titleMedium),
                            Row(
                              children: [
                                Text('\$${currentFavorites.price}',
                                    style: textStylePicker(context).titleSmall),
                                SizedBox(width: 3.w),
                                Row(
                                  children: [
                                    const Icon(Icons.star,
                                        color: Colors.yellow),
                                    Text(currentFavorites.rating.toString(),
                                        style: const TextStyle(fontSize: 16)),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          );
        }
      },
    );
  }
}
