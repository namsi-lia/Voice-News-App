class Article {
  String title;
  String author;
  String description;
  String urltoimage;
  DateTime publishedAt;
  String content;
  

  Article
  ({required this.title , 
  required this.author, 
  required this.content, 
  required this.description, 
  required this.publishedAt,
  required this.urltoimage});
  
}