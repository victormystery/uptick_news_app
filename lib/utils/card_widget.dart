// lib/widgets/news_card.dart
import 'package:flutter/material.dart';

import '../models/news_article.dart';
import '../screen/article_screen.dart';

class NewsCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<NewsArticle> newsArticles = [
      NewsArticle(
        title:
            'Gaza doctors warn of a humanitarian catastrophe after Israeli attacks',
        description:
            'After seven days of relentless Israeli bombardment, the humanitarian situation in the  Gaza Strip is rapidly deteriorating.'
            'Hospitals in the northern part of the besieged enclave have received evacuation orders ahead of a looming ground offensive, while medical facilities throughout the densely populated territory are overwhelmed by wounded patients and sheltering residents.',
        imageUrl: 'images/help_doc.jpg',
      ),
      NewsArticle(
        title: 'Article 2',
        description: 'Description for Article 2',
        imageUrl: 'images/dog_1.jpeg',
      ),
    ];

    return ListView.builder(
      itemCount: newsArticles.length,
      itemBuilder: (context, index) {
        return NewsCard(article: newsArticles[index]);
      },
    );
  }
}

class NewsCard extends StatelessWidget {
  final NewsArticle article;

  NewsCard({required this.article});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ArticleScreen(article: article),
        ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        child: Card(
          color: Colors.white, // Background color
          margin: EdgeInsets.all(10),
          elevation: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          article.title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.fade,
                          maxLines: 2,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          article.description,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.clip,
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Image.asset(
                  article.imageUrl,
                  fit: BoxFit.cover, // Adjust image fitting
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
