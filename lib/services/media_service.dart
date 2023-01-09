import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

class MediaService {
  Future<Uint8List?> getImage({required bool fromGallery}) {
    return ImagePicker()
        .pickImage(
            source: fromGallery ? ImageSource.gallery : ImageSource.camera)
        .then((value) => value?.readAsBytes());
  }
}
