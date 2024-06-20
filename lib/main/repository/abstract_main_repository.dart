import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/main/models/recomendation/recommendation.dart';

abstract class AbstractMainRepository{
  Future<List<Recommendation>> getAllRecomendation();
  // Future<List<String>> getALlImages();
  final bannersReference = fireStore.collection(bannersCollection);
  final categoriesReference = fireStore.collection(categoriesCollection);
  final recomendationReference = fireStore.collection(recomendationCollection);
}