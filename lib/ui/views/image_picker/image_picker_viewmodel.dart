import 'package:flutter/foundation.dart';
import 'package:flutter_arc/services/media_service.dart';
import 'package:stacked/stacked.dart';

class ImagePickerViewModel extends BaseViewModel {
  final MediaService _mediaService = MediaService();
  Uint8List? _selectedImage;

  bool get hasSelectedImage => _selectedImage != null;

  Uint8List? get selectedImage => _selectedImage;

  Future selectImage({required bool fromGallery}) async {
    _selectedImage = await runBusyFuture<Uint8List?>(
        _mediaService.getImage(fromGallery: fromGallery));
  }
}
