import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/main/consants.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/main/models/recomendation/recommendation.dart';
import 'package:flutter_firebase_parfumery/main/widgets/home/recomendation_widget.dart';
import 'package:flutter_firebase_parfumery/main/widgets/search/search_field_widget.dart';
import 'package:flutter_firebase_parfumery/widgets/zero_elements_widget.dart';
import 'package:sizer/sizer.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text(search,style: Theme.of(context).textTheme.titleMedium,),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 5.w,right: 5.w),
        child: Column(
          children: [
            const SearchFieldWidget(),
            searchRecomendationList.isNotEmpty ?
            Expanded(
              child: ListView.builder(
                  itemCount: searchRecomendationList.length,
                  itemBuilder: (BuildContext context, int index) {
                      return recomendation_widget(recomendation: searchRecomendationList);
                  },
                ),
            ) : Container(padding: EdgeInsets.only(top: 15.h),child: ZeroElementsWidget(title: search,move: 'write',),)
          ],
        ),
      ),
    );
  }

  searchMethod(){
    if (searchController.text.isNotEmpty) {
    searchRecomendationList = recomendationList.where((item) =>
        item.title.toString().toLowerCase().contains(
            searchController.text.toLowerCase())).toList();
  }

    setState(() {
      searchRecomendationList;
    });
  }
}