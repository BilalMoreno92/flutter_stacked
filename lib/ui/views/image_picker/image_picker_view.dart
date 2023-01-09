import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_arc/ui/views/image_picker/image_picker_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ImagePickerView extends StatelessWidget {
  const ImagePickerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ImagePickerViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: !model.hasSelectedImage
            ? Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    color: Colors.blue,
                    child: const Text('Pick an image'),
                    onPressed: () => model.selectImage(fromGallery: true),
                  ),
                  MaterialButton(
                    color: Colors.yellow,
                    child: const Text('Take an image'),
                    onPressed: () => model.selectImage(fromGallery: false),
                  ),
                ],
              )
            : model.isBusy
                ? const CircularProgressIndicator()
                : Image.memory(model.selectedImage!),
      ),
      viewModelBuilder: () => ImagePickerViewModel(),
    );
  }
}
