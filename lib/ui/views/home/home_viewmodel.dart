import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{
  final String _title = "Home view";
  String get title => '$_title $_counter';

  int _counter = 0;
  int get counter => _counter;

  void updateCounter () {
    _counter++;
    notifyListeners();
  }
}