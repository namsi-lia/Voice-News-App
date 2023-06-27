import 'package:http/http.dart' as http;
import '../models/article.dart';
import 'dart:convert';

class News {
  List<Article> news =[];

  String apiKey ='ce1efbea84304f1ca88a9df069e313fa';
  String headline ='top-headlines';

  Future<void> getNews()async {
    String url =
    "https://newsapi.org/v2/${headline}?country=de&category=business&apiKey=${apiKey}";
 
  Uri uri =Uri.parse(url);
  var response = await http.get(uri);
  var jsonData =jsonDecode(response.body);

  if (jsonData['status'] =='ok') {
    jsonData.forEach((element){
      Article article =Article(
        title:element ['title'], 
        author: element['author'], 
        content: element['content'], 
        description: element['description'], 
        publishedAt: DateTime.parse(element['publishedAt']), 
        urltoimage:element ['urltoimage']
        );
        news.add(article);

    });
  }


  }
  
}