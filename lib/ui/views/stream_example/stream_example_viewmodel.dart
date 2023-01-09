import 'package:stacked/stacked.dart';

class StreamExampleViewModel extends StreamViewModel<int> {
  String get title => "This is the time since epoch in milliseconds \n $data";

  bool _otherSource = false;

  @override
  // TODO: implement stream
  Stream<int> get stream =>
      _otherSource ? epochUpdatesFaster() : epochUpdates();

  void swapSources() {
    _otherSource = !_otherSource;
    notifySourceChanged();
  }

  Stream<int> epochUpdates() async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }

  Stream<int> epochUpdatesFaster() async* {
    while (true) {
      await Future.delayed(const Duration(milliseconds: 300));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }

  @override
  void onData(int? data) {
    //use data or save it anywhere ele
  }

  @override
  int transformData(int data) {
    //transform data before it is saved to "data" property

    return super.transformData(data);
  }
}
