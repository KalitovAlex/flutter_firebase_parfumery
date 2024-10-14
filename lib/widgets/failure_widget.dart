import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:sizer/sizer.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 30.h,
            child: const RiveAnimation.asset('assets/error.riv'),
          ),
          Text(
            'Internal server error, try again later',
            style: Theme.of(context).textTheme.titleMedium,
          )
        ],
      ),
    );
  }
}
