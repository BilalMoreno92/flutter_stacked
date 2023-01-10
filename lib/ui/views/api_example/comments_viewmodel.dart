import 'dart:convert';
import 'package:flutter_arc/app/app.locator.dart';
import 'package:flutter_arc/datamodels/comment.dart';
import 'package:flutter_arc/services/api.dart';
import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as http;

class CommentsViewModel extends FutureViewModel<List<Comment>> {
  final int postId;

  CommentsViewModel(this.postId);

  @override
  Future<List<Comment>> futureToRun() => locator<Api>().getCommentsForPost(postId);
}
