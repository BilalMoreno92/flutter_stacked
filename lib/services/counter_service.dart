import 'package:stacked/stacked.dart';

class CounterService with ListenableServiceMixin{
  int _counter = 0;

  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void doubleCounter() {
    _counter *= 2;
    notifyListeners();
  }
}
