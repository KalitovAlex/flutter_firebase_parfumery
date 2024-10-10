import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/main/consants.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/core/routes/routes.gr.dart';
import 'package:flutter_firebase_parfumery/widgets/loading_widget.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:auto_route/auto_route.dart'; // Import для навигации

class categories_widget extends StatelessWidget {
  const categories_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: mainRepository.categoriesReference.snapshots(),
        builder: (context, snapshots) {
          if (snapshots.hasData) {
            return SizedBox(
              height: 12.h,
              width: 100.w,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: snapshots.data!.docs.length,
                itemBuilder: (context, indext) {
                  return GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).push(SubCategoriesRoute(
                          subCategoryName: snapshots.data!.docs[indext]
                              ['title']));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 18.w,
                            height: 8.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color.fromARGB(255, 190, 190, 190)
                                    .withOpacity(0.2)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: CachedNetworkImage(
                                imageUrl: snapshots.data!.docs[indext]
                                    ['image_url'],
                                imageBuilder: (context, imageProvider) {
                                  return Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: imageProvider)),
                                  );
                                },
                                placeholder: (context, url) {
                                  return const loadingWidget();
                                },
                                errorWidget: (context, url, error) {
                                  return Image.asset(errorIcon);
                                },
                              ),
                            )),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Text(
                          snapshots.data!.docs[indext]['title'],
                          style: textStylePicker(context).titleSmall,
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 10.w,
                  );
                },
              ),
            );
          } else {
            return Center(
                child: LoadingAnimationWidget.inkDrop(
                    color: Colors.green, size: 30));
          }
        });
  }
}
