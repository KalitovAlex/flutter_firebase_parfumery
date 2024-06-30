import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/main/models/cart/cart.dart';
import 'package:flutter_firebase_parfumery/main/models/notification/notifications.dart';
import 'package:flutter_firebase_parfumery/main/models/recomendation/recommendation.dart';

import '../../../core/main/consants.dart';

abstract class AbstractMainRepository{
  Future<List<Recommendation>> getAllRecomendation();
  Future<bool> makeCard(Cart card);
  Future<void> changeCard(Cart currentCart);
  Future<List<dynamic>> getCard();
  Future<bool> removeCard(Cart cartelement);
  Future<List<Notifications>> getAllNotifications();
  final notificationReference = fireStore.collection(notificationCollection);
  final bannersReference = fireStore.collection(bannersCollection);
  final categoriesReference = fireStore.collection(categoriesCollection);
  final recomendationReference = fireStore.collection(recomendationCollection);
}