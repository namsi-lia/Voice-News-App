import 'package:flutter/material.dart';
import 'package:voicenewsapp/service/news.dart';
import 'package:voicenewsapp/widgets/searchwidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  bool? loadingInProgress;
  var newsList;


  void getNews() async{
    News news =News();
    await news.getNews();
    setState(() {
      loadingInProgress=false;
      newsList =news.news;
    });
  }
  
   @override
  void initState() {
    loadingInProgress =true;
    super.initState();
    getNews();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.all(20.0),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Discover',
          style: TextStyle(fontSize: 32.0,
          fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 10.0,),
          Text('Top headlines from all over the world',
          style: TextStyle(
            color: Colors.blueGrey,
          ),
          
          ),
          SizedBox(height: 20.0,),

          SearchWidget(),

        ],
      ),
      
      ),
    );
  }
}