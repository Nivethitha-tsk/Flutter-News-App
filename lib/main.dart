// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:news_app/article_tile.dart';
import 'package:news_app/news.dart';




void main(){

  runApp(HomePage());
}


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ArticleModel> articles = [];
  bool _loading = true ;

  @override
  void initState() {
    super.initState();
    getNews();
  }

  getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Color(0xff464646),
       appBar: AppBar(
      backgroundColor: Colors.black,
      title:Center(child: Text('H E A D L I N E S',style:TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,fontSize:29,fontFamily : 'RobotoSlab')
        ),
        ) ,
      ), 
      body: Padding(
      padding:EdgeInsets.all(16) ,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(height:24.0,),
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: articles.length,
        itemBuilder: (context,index){
          return ArticleTile(
            articles[index].urlToImage,
            articles[index].title,
            articles[index].author,
            articles[index].publishedAt
          );
        }
        ),
      ) ,
    )
    );
  }
}

