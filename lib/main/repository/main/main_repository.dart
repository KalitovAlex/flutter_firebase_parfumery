import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/main/models/cart/cart.dart';
import 'package:flutter_firebase_parfumery/main/models/notification/notifications.dart';
import 'package:flutter_firebase_parfumery/main/models/recomendation/recommendation.dart';
import 'package:flutter_firebase_parfumery/main/repository/main/abstract_main_repository.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../core/main/consants.dart';

class MainRepository extends AbstractMainRepository {
  late final Box<Cart> _cartBox;

  MainRepository() {
    _cartBox = Hive.box<Cart>(cart);
  }

  @override
  Future<List<Recommendation>> getAllRecomendation() async {
    try {
      final response =
          await fireStore.collection(recomendationCollection).get();
      return response.docs
          .map((element) => Recommendation.fromJson(element.data()))
          .toList();
    } on FirebaseException catch (e) {
      talker.error('Firebase error: ${e.message}');
      return [];
    } catch (e) {
      talker.error('Error: $e');
      return [];
    }
  }

  @override
  Future<void> changeCard(Cart currentCart) async {
    try {
      final cartList = _cartBox.values.toList();
      final index =
          cartList.indexWhere((element) => currentCart.title == element.title);
      if (index != -1) {
        await _cartBox.putAt(index, currentCart);
        allCart = cartList;
      }
    } catch (e) {
      talker.error('Error changing card: $e');
    }
  }

  @override
  Future<List<dynamic>> getCard() async {
    try {
      return _cartBox.values.toList();
    } catch (e) {
      talker.error('Error getting card: $e');
      return [];
    }
  }

  @override
  Future<bool> makeCard(Cart card) async {
    try {
      await _cartBox.add(card);
      allCart = await getCard(); // Use the updated getCard method
      return true;
    } catch (e) {
      talker.error('Error making card: $e');
      return false;
    }
  }

  @override
  Future<bool> removeCard(Cart cartelement) async {
    try {
      final cartList = _cartBox.values.toList();
      final index =
          cartList.indexWhere((element) => element.title == cartelement.title);
      if (index != -1) {
        await _cartBox.deleteAt(index);
        return true;
      }
      return false; // Return false if the item was not found
    } catch (e) {
      talker.error('Error removing card: $e');
      return false;
    }
  }

  @override
  Future<List<Notifications>> getAllNotifications() async {
    try {
      final response = await notificationReference.get();
      return response.docs
          .map((element) => Notifications.fromJson(element.data()))
          .toList();
    } on FirebaseException catch (e) {
      talker.error("Error getting notifications: ${e.message}");
      return [];
    } catch (e) {
      talker.error('Error: $e');
      return [];
    }
  }
}
