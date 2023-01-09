import 'package:stacked/stacked.dart';

class FutureExampleViewModel extends FutureViewModel<String> {
  String? _title;

  String get title => _title ?? "";

  String _errorMessage = "";

  String get errorMessage => _errorMessage;

  @override
  Future<String> futureToRun() => getDataFromServer();

  Future<String> getDataFromServer() async {
    await Future.delayed(const Duration(seconds: 2));
    throw Exception("This broke dude!");
    return "Fetched from server";
  }

  @override
  void onError(error) {
    _errorMessage = error.message;
  }
}