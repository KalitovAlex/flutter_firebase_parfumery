import 'package:flutter_firebase_parfumery/core/globals.dart';

abstract class AbstractMainRepository{
  final bannersReference = fireStore.collection(bannersCollection);
  final categoriesReference = fireStore.collection(categoriesCollection);
}