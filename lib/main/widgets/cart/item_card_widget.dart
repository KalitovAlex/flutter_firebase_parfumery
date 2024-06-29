import 'package:auto_route/auto_route.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_parfumery/core/main/consants.dart';
import 'package:flutter_firebase_parfumery/core/main/get_all_data.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/core/routes/routes.gr.dart';
import 'package:flutter_firebase_parfumery/core/styles/widget/button_styles.dart';
import 'package:flutter_firebase_parfumery/main/bloc/cart/cart_bloc.dart';
import 'package:flutter_firebase_parfumery/main/models/recomendation/recommendation.dart';
import 'package:flutter_firebase_parfumery/widgets/loading_widget.dart';
import 'package:flutter_firebase_parfumery/widgets/show_loading_circle.dart';
import 'package:flutter_firebase_parfumery/widgets/show_snack_bar.dart';
import 'package:sizer/sizer.dart';

class ItemCardWidget extends StatefulWidget {
  const ItemCardWidget(
      {super.key, required this.currentItem, required this.index});
  final Recommendation currentItem;
  final int index;

  @override
  State<ItemCardWidget> createState() => _ItemCardWidgetState();
}

class _ItemCardWidgetState extends State<ItemCardWidget> {
  @override
  Widget build(BuildContext context) {
    final bloccommand = BlocProvider.of<CartBloc>(context);
    return BlocListener<CartBloc, CartState>(
      listener: (context, state)  {
        if(state is CartLoading){
          showLoadingCircle(context);
        }
        if(state is CartLoaded) {
        getallCart();
        context.router.replaceAll([BottomNavigationRoute(response: recomendationList), HomeRoute(response: recomendationList)]);
        ScaffoldMessenger.of(context)
        ..clearMaterialBanners()
        ..showSnackBar(materialBanner(
        'Succesfuly',
        'You add ${widget.currentItem.title} to cart',
        ContentType.success));
        }
        if(state is CartFailure){
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context)
        ..clearMaterialBanners()
        ..showSnackBar(materialBanner(
        'Oops',
        'Maybye internal server error',
        ContentType.failure));
        }
        if(state is CartAlready){
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context)
        ..clearMaterialBanners()
        ..showSnackBar(materialBanner(
        'Oops',
        'You have this item in your cart',
        ContentType.help));
        }
      },
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 237, 237, 237),
        body: Column(
          children: [
            SizedBox(
              height: 40.h,
              width: double.infinity,
              child: PageView.builder(
                  itemCount: widget.currentItem.picUrls!.length,
                  itemBuilder: (context, index) {
                    return CachedNetworkImage(
                      imageUrl: widget.currentItem.picUrls![index],
                      placeholder: (context, url) {
                        return const loadingWidget();
                      },
                      errorWidget: (context, url, error) {
                        return Image.asset(errorIcon);
                      },
                      imageBuilder: (context, imageProvider) {
                        return Container(
                           margin: EdgeInsets.only(right: 4.w, left: 4.w, top: 2.h),
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),image: DecorationImage(image: imageProvider,fit: BoxFit.cover)),);
                      },
                    );
                  }),
            ),
            SizedBox(
              height: 1.h,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 1.5.h),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.currentItem.title!,
                              style: textStylePicker(context).titleMedium,
                            ),
                            Text(
                              widget.currentItem.rating.toString(),
                              style: textStylePicker(context).headlineMedium,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(widget.currentItem.desc!),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total Price",
                                  style: textStylePicker(context).titleMedium,
                                ),
                                Text(
                                  ' \$ ${widget.currentItem.price}.00',
                                  style:
                                      textStylePicker(context).headlineMedium,
                                )
                              ],
                            ),
                            Container(
                              width: 45.w,
                              decoration: auth_button_container,
                              child:  TextButton(
                                  onPressed: () {
                                    bloccommand.add(CartEvent(currentItem: widget.currentItem));
                                  },
                                  child: Text(
                                    'Add to cart',
                                    style: textStylePicker(context)
                                        .displayMedium,
                                  ))
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
