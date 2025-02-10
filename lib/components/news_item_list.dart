import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_project_make/models/news_model.dart';
import 'package:demo_project_make/ui/news_details.dart';
import 'package:flutter/material.dart';

class NewsItemList extends StatelessWidget {
  final NewsModel newsModel;
  const NewsItemList({super.key, required this.newsModel});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetails(newsModel: newsModel)));
      },
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(left: 12,right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5,),
            CachedNetworkImage(
              height: 250,
              width: double.infinity,
              fit: BoxFit.fitWidth,
              imageUrl: newsModel.urlToImage.toString(),
              placeholder: (context, url) => Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Container(
                  child: Text(newsModel.source!.name.toString()),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                ),
                SizedBox(width: 10,),
                Text(newsModel.publishedAt!),
              ],
            ),
            SizedBox(height: 5,),
            Text(newsModel.author!.toString()),
            SizedBox(height: 5,),
            Text(newsModel.title!.toString()),
          ],
        ),
      ),
    );
  }
}
