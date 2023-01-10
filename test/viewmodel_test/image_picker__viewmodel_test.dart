import 'package:flutter_arc/app/app.locator.dart';
import 'package:flutter_arc/services/media_service.dart';
import 'package:flutter_arc/ui/views/image_picker/image_picker_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  group("ImagePickerViewModel Test", () async {
    test(
        "When selectImage is called with fromGallery true, should request image from gallery",
        () async {
          var mediaService = MediaService();
          locator.registerLazySingleton(() => mediaService);
      var model = ImagePickerViewModel();
      await model.selectImage(fromGallery: true);
      //verify(mediaService.getImage(fromGallery: true));
    });
  });
}
