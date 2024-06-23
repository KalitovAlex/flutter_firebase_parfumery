import 'dart:io';

abstract class AbstractProfileRepository {
  Future<String?> addUserImage(String uniqueName, File? selectImage);
}