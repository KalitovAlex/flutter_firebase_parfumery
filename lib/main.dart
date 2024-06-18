import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_parfumery/core/init_options.dart';
import 'package:flutter_firebase_parfumery/firebase_options.dart';
import 'core/my_app.dart';
void main() async {
  initSingletons();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  initHive();
  initDependencies();
  runApp(const MyApp());
}