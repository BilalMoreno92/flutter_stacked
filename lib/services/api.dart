import 'dart:convert';

import 'package:flutter_arc/datamodels/comment.dart';
import 'package:flutter_arc/datamodels/post.dart';
import 'package:flutter_arc/datamodels/user.dart';
import 'package:http/http.dart' as http;

class Api {
  static const endPoint = 'https://jsonplaceholder.typicode.com';

  var client = http.Client();

  Future<List<Comment>> getCommentsForPost(int postId) async {
    var comments = <Comment>[];
    var response = await client.get(Uri.parse(
        '$endPoint/comments?postId=$postId'));
    var parsed = json.decode(response.body) as List<dynamic>;
    for (var comment in parsed) {
      comments.add(Comment.fromJson(comment));
    }
    return comments;
  }
  Future<List<Post>> getPostsForUser(int userId) async{
    var posts = <Post>[];
    var response = await client.get(
        Uri.parse('$endPoint/posts?userId=$userId'));
    var parsed = json.decode(response.body) as List<dynamic>;
    for (var post in parsed) {
      posts.add(Post.fromJson(post));
    }

    return posts;
  }

  Future<User> getUserProfile(int userId) async {
    var response = await client
        .get(Uri.parse('$endPoint/users/$userId'));
    return User.fromJson(json.decode(response.body));
  }
}
