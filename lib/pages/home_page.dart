import 'package:flutter/material.dart';
import 'package:news_app/models/articles.dart';
import 'package:news_app/services/newsApi.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            onTap: () async {
              NewsApiHelper newsApiHelper = NewsApiHelper();
              List<Articles> articles =
                  await newsApiHelper.fetchNewsByCategory('sports');
              for (var article in articles) {
                print("url : ${article.url}");
              }
            },
            child: Text(
              "FetchData",
              style: TextStyle(fontSize: 20),
            )),
      ),
    );
  }
}
