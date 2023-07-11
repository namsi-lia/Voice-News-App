import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import '../models/news.dart';
import 'dart:convert';


 String apiKey ='ce1efbea84304f1ca88a9df069e313fa';
String headline ='top-headlines';
 
class ApiService {
 
    String endpoint =
    "https://newsapi.org/v2/${headline}?country=de&category=business&apiKey=${apiKey}";

    Future<List<News>> getNews() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['articles'];
      return result.map(((e) => News.fromJson(e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }   
  
}
final newsApiService = Provider<ApiService>((ref) => ApiService());

