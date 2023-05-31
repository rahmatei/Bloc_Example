import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:example_bloc/models/article.dart';

class Repository {
   String endpoint =
      "https://techblog.sasansafari.com/Techblog/api/article/get.php?command=new";

  Future<List<Article>> getArticles() async {
    List<Article> articles = [];

    await Dio().get(endpoint).then((value) {
      if (value.statusCode == 200) {
        for (var element in value.data) {
          articles.add(Article.fromJson(element));
        }
      }
    });
    log(articles.length.toString());
    return articles;
  }
}
