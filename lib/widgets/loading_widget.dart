import 'package:flutter/material.dart';

class loadingWidget extends StatelessWidget {
  const loadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.green,
      ),
    );
  }
}
