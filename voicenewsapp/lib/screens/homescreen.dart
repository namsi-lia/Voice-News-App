import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voicenewsapp/service/apiservice.dart';
import 'package:intl/intl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voicenewsapp/providers/news_provider.dart';
import 'package:voicenewsapp/widgets/news_article_widget.dart';
import 'package:voicenewsapp/widgets/searchwidget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _newsData = ref.watch(newsProvider);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Discover',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Top headlines from all over the world',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const SearchWidget(),
            _newsData.when(
              data: (_newsData) {
                return Expanded(
                  child: ListView(
                    children: [
                      ..._newsData.map(
                        (news) => NewsArticleWidget(news: news),
                      ),
                    ],
                  ),
                );
              },
              error: (err, s) => Text(err.toString()),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

