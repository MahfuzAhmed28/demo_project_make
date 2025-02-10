import 'package:demo_project_make/components/news_item_list.dart';
import 'package:demo_project_make/models/news_model.dart';
import 'package:demo_project_make/service/api_service.dart';
import 'package:flutter/material.dart';

class BreakingNews extends StatefulWidget {
  const BreakingNews({super.key});

  @override
  State<BreakingNews> createState() => _BreakingNewsState();
}

class _BreakingNewsState extends State<BreakingNews> {

  ApiService _apiService= ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _apiService.getBreakingNews(),
        builder: (context,snapShot){
          if(snapShot.hasData){
            List<NewsModel> articles=snapShot.data ?? [];
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context,index){
                return NewsItemList(newsModel: articles[index]);
              }
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
