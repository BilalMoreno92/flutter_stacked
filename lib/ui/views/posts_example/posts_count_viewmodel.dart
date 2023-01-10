import 'package:flutter_arc/app/app.locator.dart';
import 'package:flutter_arc/services/posts_service.dart';
import 'package:stacked/stacked.dart';

class PostsCountViewModel extends BaseViewModel {
  int get postsCount => locator<PostsService>().posts?.length ?? 0;
}
