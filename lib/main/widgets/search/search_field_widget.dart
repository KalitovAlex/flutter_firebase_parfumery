import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/main/colors.dart';
import 'package:flutter_firebase_parfumery/core/styles/widget/text_styles.dart';
class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Container(
      decoration:  BoxDecoration(
        color: grayColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        decoration: searchDecoration(),
        controller: searchController,
      ),
    );
  }
}