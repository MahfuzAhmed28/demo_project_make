import 'package:demo_project_make/components/news_item_list.dart';
import 'package:demo_project_make/models/news_model.dart';
import 'package:demo_project_make/service/api_service.dart';
import 'package:flutter/material.dart';

class AllNews extends StatefulWidget {
  const AllNews({super.key});

  @override
  State<AllNews> createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {

  ApiService _apiService=ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _apiService.getAllNews(),
        builder: (context,snapShot){
          if(snapShot.hasData){
            List<NewsModel> articles=snapShot.data ?? [];
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (contex,index){
                return NewsItemList(newsModel: articles[index]);
              },
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      ),
    );
  }
}
