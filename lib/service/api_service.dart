import 'dart:convert';

import 'package:demo_project_make/models/news_model.dart';
import 'package:http/http.dart';

class ApiService{
  final  all_news_url='https://newsapi.org/v2/everything?q=bitcoin&apiKey=ba5c9dc1a0b24904874080a1bd644989';
  final breaking_news_url='https://newsapi.org/v2/top-headlines?country=us&apiKey=ba5c9dc1a0b24904874080a1bd644989';


  Future<List<NewsModel>> getAllNews() async{
    try{
      Response response=await get(Uri.parse(all_news_url));
      if(response.statusCode==200){
        Map<String,dynamic> json=jsonDecode(response.body);
        List<dynamic> body=json['articles'];
        List<NewsModel> articlesList=body.map((item) => NewsModel.fromJson(item)).toList();
        return articlesList;
      }
      else{
        throw('No news found');
      }
    }
    catch(e)
    {
      throw e;
    }

  }

  Future<List<NewsModel>> getBreakingNews() async{
    try{
      Response response=await get(Uri.parse(breaking_news_url));
      if(response.statusCode==200){
        Map<String,dynamic> json=jsonDecode(response.body);
        List<dynamic> body=json['articles'];
        List<NewsModel> articlesList=body.map((item) => NewsModel.fromJson(item)).toList();
        return articlesList;
      }
      else{
        throw('No news found');
      }
    }
    catch(e)
    {
      print(e.toString());
      throw e;
    }

  }
}