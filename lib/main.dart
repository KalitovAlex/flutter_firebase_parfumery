import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_firebase_parfumery/core/main/init_options.dart';
import 'package:flutter_firebase_parfumery/firebase_options.dart';
import 'core/main/get_all_data.dart';
import 'core/main/my_app.dart';
void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent
    )
  );
  initSingletons();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  initHive();
  initTalker();
  getallData();
  runApp(const MyApp());
}