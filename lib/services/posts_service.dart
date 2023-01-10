import 'package:flutter_arc/app/app.locator.dart';
import 'package:flutter_arc/datamodels/post.dart';
import 'package:flutter_arc/services/api.dart';

class PostsService {
  final _api = locator<Api>();

  List<Post>? _posts;

  List<Post>? get posts => _posts;

  bool get hasPosts => _posts != null && _posts!.isNotEmpty;

  Future<List<Post>> getPostsForUser(int userId) async {
    _posts = await _api.getPostsForUser(userId);
    return _posts!;
  }
}
