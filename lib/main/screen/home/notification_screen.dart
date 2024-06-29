import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // List<dynamic> list = 
    // final listIsEmpty = list.isEmpty;
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications', style: theme.textTheme.titleMedium,),
      ),
    );
  }
}