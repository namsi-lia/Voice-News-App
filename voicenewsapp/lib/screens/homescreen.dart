import 'package:flutter/material.dart';
import 'package:voicenewsapp/service/apiservice.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  late bool loadingInProgress ;
  var newsList;


  void getNews() async{
    News news =News();
    await news.getNews();
    setState(() {
      loadingInProgress =false;
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
      body: SafeArea(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: loadingInProgress
         ?const Center(
          child: Text('Loading'),

         )
         :Column(
           children:<Widget> [
            Row(
              children: const <Widget>[
                Text('Top Headlines',
          style: TextStyle(fontSize: 32.0,
          fontWeight: FontWeight.bold,
          ),
          ),
        ],
        ),
        Divider(),
          Expanded(
            child: ListView.builder(
              itemBuilder:(context, index){
                return ListTile(
                 title: Text(newsList[index].title),
                );
              }),
          )
           ],
         ),
        ),
      ),
    );
  }
}