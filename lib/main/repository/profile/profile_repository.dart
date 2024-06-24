import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_firebase_parfumery/main/repository/profile/abstract_profile_repository.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/main/consants.dart';
import '../../../core/main/globals.dart';

class ProfileRepository extends AbstractProfileRepository{
  @override
  Future<String?> addUserImage(String uniqueName, XFile? selectImage) async{
    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirMessage  = referenceRoot.child(avatars);
    Reference referenceDirUpload = referenceDirMessage.child(uniqueName);
    try {
     await referenceDirUpload.putFile(File(selectImage!.path));
     final reference = referenceDirUpload.getDownloadURL();
     return reference;
    } catch (e) {
      talker.error(e);
      return null;
    }
  }
}