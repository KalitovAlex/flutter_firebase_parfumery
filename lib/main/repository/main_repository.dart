import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firebase_parfumery/core/main/globals.dart';
import 'package:flutter_firebase_parfumery/main/models/recommendation.dart';
import 'package:flutter_firebase_parfumery/main/repository/abstract_main_repository.dart';

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
//   Future<List<String>> getALlImages() async{
//     try{
//       List<String> imageList;
//       final response = await fireStore.collection(recomendationCollection).doc()
//     }on FirebaseException{
//       talker.error('firebase error');
//       return [];
//     } catch(e){
//       talker.error(e);
//     }
//   }
}