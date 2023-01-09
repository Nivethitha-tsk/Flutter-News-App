import 'package:http/http.dart';
import 'dart:convert';

class ArticleModel {
  String title;
  String author;
  String description;
  String url;
  String urlToImage;
  String content;
  String publishedAt;
  ArticleModel(this.title,this.author,this.description,this.url,this.urlToImage,this.content,this.publishedAt);
}
class News{
  List <ArticleModel> news = [];
  Future<void> getNews() async {
  var url = Uri.parse("https://newsapi.org/v2/top-headlines?country=au&apiKey=4bc27b4c2a574ea0bbcee264d9669b37");
  Response response = await get(url);
  var jsonData = jsonDecode(response.body);
  if(jsonData['status'] == "ok"){

    
    jsonData['articles'].forEach((element){
        if(element['urlToImage']!=null && element['description']!=null){
          try{
            ArticleModel articleModel = ArticleModel(
              element['title'],element['source']['name'],element['description'],element['url'], 
              element['urlToImage'],element['content'],element['publishedAt']);
              news.add(articleModel);
          }
          catch(Exeception){
              print('Null value');
          }
             
             
        }
    });

  }
  }
  
}