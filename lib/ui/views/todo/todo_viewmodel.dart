import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';

class TodoViewModel extends BaseViewModel {
  final List<String> _todos = <String>[];
  List<String> get todos => _todos;

  void startupLogic() {
    if (kDebugMode) {
      print('startup Logic called');
    }
  }

  void addTodo(String text) {
    _todos.add(text);
    notifyListeners();
  }
}
