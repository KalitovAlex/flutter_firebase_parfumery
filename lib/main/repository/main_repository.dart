import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/main/models/cart/cart.dart';
import 'package:flutter_firebase_parfumery/main/models/recomendation/recommendation.dart';
import 'package:flutter_firebase_parfumery/main/repository/abstract_main_repository.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../core/main/consants.dart';

class MainRepository  extends AbstractMainRepository{
  @override
  Future<List<Recommendation>> getAllRecomendation()  async{
    try{
      List<Recommendation> recList = [];
      final response = await fireStore.collection(recomendationCollection).get();
      recList = response.docs.map((element) =>  Recommendation.fromJson(element.data())).toList();
      return recList;
    } on FirebaseException {
      talker.error('firebase error');
      return [];
    } catch(e){
      talker.error(e);
      return [];
    }
  }

  @override
  Future<Cart> changeCard() {
    // TODO: implement changeCard
    throw UnimplementedError();
  }

  @override
  Future<List<dynamic>> getCard() async {
    try{
      final cartBox = await Hive.openBox(cart);
      final cartList = cartBox.values.toList();
      await cartBox.close();
      return cartList;
    } catch(e){
      talker.error(e);
      return [];
    }
  }

  @override
  Future<void> makeCard(Cart card) async{
    try{
      final cartBox = await Hive.openBox(cart);
      cartBox.add(card);
      cartBox.close();
    } catch(e){
      talker.error(e);
    }
  }
}