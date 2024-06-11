import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firebase_parfumery/core/globals.dart';

abstract class AbstractMainRepository{
  final mainReference = fireStore.collection(bannersCollection);
}