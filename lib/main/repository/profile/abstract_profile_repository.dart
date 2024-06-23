import 'package:image_picker/image_picker.dart';

abstract class AbstractProfileRepository {
  Future<String?> addUserImage(String uniqueName, XFile? selectImage);
}