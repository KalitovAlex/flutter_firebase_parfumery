import 'package:flutter_firebase_parfumery/core/main/globals.dart';

getallData () async {
  recomendationList = await mainRepository.getAllRecomendation();
}
getallCart() async{
  allCart = await mainRepository.getCard();
}