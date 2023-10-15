// lib/screens/article_screen.dart
import 'package:flutter/material.dart';

import '../models/news_article.dart';

class ArticleScreen extends StatelessWidget {
  final NewsArticle article;

  ArticleScreen({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              article.imageUrl,
              scale: 3,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                article.description,
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
