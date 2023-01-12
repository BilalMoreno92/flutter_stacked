import 'package:flutter/foundation.dart';
import 'package:flutter_arc/app/app.locator.dart';
import 'package:flutter_arc/datamodels/post.dart';
import 'package:flutter_arc/services/posts_service.dart';
import 'package:stacked/stacked.dart';

class PostsViewModel extends FutureViewModel<List<Post>> {
  final _service = locator<PostsService>();

  @override
  Future<List<Post>> futureToRun() {
    if (kDebugMode) {
      print("Fetch posts");
    }
    return _service.getPostsForUser(1);
  }
}
