import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:voicenewsapp/models/news.dart';
import 'package:voicenewsapp/screens/news_article.dart';

class NewsArticleWidget extends StatelessWidget {
  final News news;
  const NewsArticleWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => NewsArticle(
            singleNewsArticle: news,
          ),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: NetworkImage(news.image),
              height: 150.0,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              news.title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat("dd-MM-yy").format(
                    DateTime.parse(news.publishedAt),
                  ),
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  news.author,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

