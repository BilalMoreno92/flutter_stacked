import 'dart:convert';
import 'package:flutter_arc/app/app.locator.dart';
import 'package:flutter_arc/datamodels/post.dart';
import 'package:flutter_arc/services/api.dart';
import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as http;

class PostsViewModel extends FutureViewModel<List<Post>> {
  final int userId;

  PostsViewModel(this.userId);

  @override
  Future<List<Post>> futureToRun() => locator<Api>().getPostsForUser(userId);
}
