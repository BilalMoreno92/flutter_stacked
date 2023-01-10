import 'dart:convert';
import 'package:flutter_arc/app/app.locator.dart';
import 'package:flutter_arc/datamodels/user.dart';
import 'package:flutter_arc/services/api.dart';
import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as http;

class UserViewModel extends FutureViewModel<User> {
  final int userId;

  UserViewModel(this.userId);

  @override
  Future<User> futureToRun() => locator<Api>().getUserProfile(userId);
}
