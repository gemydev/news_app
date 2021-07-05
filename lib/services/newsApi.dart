import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/models/articles.dart';
import 'package:news_app/models/news.dart';

class NewsApiHelper {
  static const String apiKey = '6e848b44f43e41eaaba143569e9f823a';
  Future<List<Articles>> fetchAllArticles() async {
    try {
      http.Response response = await http.get(
          'https://newsapi.org/v2/top-headlines?country=eg&apiKey=$apiKey');
      if (response.statusCode == 200) {
        String data = response.body;
        print("data : ${response.body}");
        var jsonData = jsonDecode(data);
        News news = News.fromJson(jsonData);
        List<Articles> articlesList =
            news.articles.map((e) => Articles.fromJson(e)).toList();
        print('from fetch fun : ${articlesList[0].content}');
        return articlesList;
      } else {
        print(response.statusCode.toString());
      }
    } catch (ex) {
      print('error from fetch fun >> ${ex.toString()}');
    }
  }

  Future<List<Articles>> fetchNewsByCategory(String category) async {
    try {
      http.Response response = await http.get(
          'https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=$apiKey');
      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        News news = News.fromJson(jsonData);
        List<Articles> articlesList =
            news.articles.map((e) => Articles.fromJson(e)).toList();
        return articlesList;
      } else {
        print(response.statusCode.toString());
        return null;
      }
    } catch (ex) {
      print(ex.toString());
      return null;
    }
  }
}
