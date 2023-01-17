import 'package:flutter_arc/app/app.locator.dart';
import 'package:flutter_arc/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class SingleIncreaseCounterViewModel extends ReactiveViewModel {
  final _counterService = locator<CounterService>();

  int get counter => _counterService.counter;

  void updateCounter() {
    _counterService.incrementCounter();
    notifyListeners();
  }
@override
  List<ListenableServiceMixin> get listenableServices => [_counterService];
}
