import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voicenewsapp/models/news.dart';
import 'package:voicenewsapp/service/apiservice.dart';

final newsProvider = FutureProvider<List<News>>((ref) async {
  return ref.read(newsApiService).getNews();
});
