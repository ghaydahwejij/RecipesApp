import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../model/Post_response.dart';

class PostProvider extends ChangeNotifier{
  Dio? dio;
  List<PostResponse>? data;

  PostProvider(){
    dio=Dio(
      BaseOptions(
        contentType: "Application/json"
      )
    );
  }

Future<void> getPosts() async {
  print("get posts called");
  var response = await dio?.get("https://api.sampleapis.com/recipes/recipes");
  List<dynamic> jsonList = response?.data;
  data = jsonList.map((item) => PostResponse.fromJson(item)).toList();
  notifyListeners();
}

}