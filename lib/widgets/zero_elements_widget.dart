import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:sizer/sizer.dart';

class ZeroElementsWidget extends StatelessWidget {
  ZeroElementsWidget({super.key, required this.title, required this.move});
  String title;
  String move;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 30.h,
            child: const RiveAnimation.asset('assets/empty.riv'),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            'Не $move никаких $title',
            style: Theme.of(context).textTheme.titleMedium,
          )
        ],
      ),
    );
  }
}
