import 'package:stacked/stacked.dart';

class ThemeModel {
  final int index;
  final String title;

  ThemeModel({required this.index, required this.title});
}

class MultipleThemesViewModel extends BaseViewModel {
  List<ThemeModel> get themes => List<ThemeModel>.generate(
      5,
      (index) => ThemeModel(
            index: index,
            title: _getTitleForIndex(index),
          ));

  String _getTitleForIndex(int index) {
    switch (index) {
      case 0:
        return 'Blue';
      case 1:
        return 'Red';
      case 2:
        return 'Purple';
      case 3:
        return 'Teal';
      case 4:
        return 'Pink';
      case 5:
        return 'Green';
    }

    return 'No theme for index';
  }
}
