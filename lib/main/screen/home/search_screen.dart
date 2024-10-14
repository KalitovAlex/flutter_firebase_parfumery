import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/main/consants.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/main/models/recomendation/recommendation.dart';
import 'package:flutter_firebase_parfumery/main/widgets/cart/item_card_widget/style/cart_decoration.dart';
import 'package:flutter_firebase_parfumery/main/widgets/home/recomendation_widget.dart';
import 'package:flutter_firebase_parfumery/widgets/zero_elements_widget.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sizer/sizer.dart';

import '../../../core/main/colors.dart';
import '../../../core/styles/widget/text_styles.dart';
import 'package:flutter_firebase_parfumery/main/widgets/cart/item_card_widget/item_card_widget.dart'; // Импортируем ItemCardWidget

@RoutePage()
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Recommendation> searchRecomendationList = [];

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          search,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 5.w, right: 5.w),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: grayColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextFormField(
                onChanged: (value) {
                  searchMethod();
                },
                decoration: searchDecoration(),
                controller: searchController,
              ),
            ),
            searchRecomendationList.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: 3.h),
                      itemCount: searchRecomendationList.length,
                      itemBuilder: (BuildContext context, int index) {
                        final currentSearchEl = searchRecomendationList[index];
                        return GestureDetector(
                          onTap: () {
                            showBarModalBottomSheet(
                              context: context,
                              backgroundColor: Colors.transparent,
                              builder: (context) => ItemCardWidget(
                                // Заменяем на ItemCardWidget
                                currentItem:
                                    currentSearchEl, // Передаем текущий элемент
                                index: index,
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 1.5.h),
                            decoration: cartDecoration,
                            width: double.infinity,
                            height: 10.h,
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      bottom: 1.5.h, top: 1.5.h, left: 2.5.w),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.network(
                                        currentSearchEl.picUrls!.first,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Text(
                                  currentSearchEl.title!,
                                  style: theme.textTheme.titleMedium,
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Text(
                                  '${currentSearchEl.price}\$',
                                  style: theme.textTheme.headlineSmall,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                : Container(
                    padding: EdgeInsets.only(top: 1.5.h),
                    child: SingleChildScrollView(
                      child: ZeroElementsWidget(
                        title: 'Товаров',
                        move: 'найдено',
                      ),
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.all(8.0), // Добавлено отступ
              child: Text(
                textAlign: TextAlign.left,
                'Самые популярные запросы',
                style: theme.textTheme.titleSmall,
              ),
            ),
            recomendation_widget(recomendation: recomendationList)
          ],
        ),
      ),
    );
  }

  searchMethod() {
    if (searchController.text.isNotEmpty) {
      searchRecomendationList = recomendationList
          .where((item) => item.title
              .toString()
              .toLowerCase()
              .contains(searchController.text.toLowerCase()))
          .toList();
    }

    setState(() {
      searchRecomendationList;
    });
  }
}
