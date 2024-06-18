import 'package:flutter_firebase_parfumery/core/globals.dart';
import 'package:flutter_firebase_parfumery/main/models/recommendation.dart';

abstract class AbstractMainRepository{
  Future<List<Recommendation>> getAllRecomendation();
  final bannersReference = fireStore.collection(bannersCollection);
  final categoriesReference = fireStore.collection(categoriesCollection);
  final recomendationReference = fireStore.collection(recomendationCollection);
}