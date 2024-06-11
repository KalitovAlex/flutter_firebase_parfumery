import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_firebase_parfumery/core/globals.dart';
import 'package:flutter_firebase_parfumery/main/models/main.dart';
import 'package:flutter_firebase_parfumery/main/repository/abstract_main_repository.dart';

class MainRepository  extends AbstractMainRepository{
  @override
  Future<bool> getAllProducts() async{
    List<Banner> banner = [];
    try{
      final DatabaseReference ref = FirebaseDatabase.instance.ref();
      DataSnapshot snapshot = await ref.child('Banner').get();
      banner.add(snapshot.value as Banner);
      mainModel = mainModel.copyWith(banner: banner);
      talker.log(mainModel.banner);
      return true;
    }catch (e){
      talker.error(e);
      return false;
    }
  }
}