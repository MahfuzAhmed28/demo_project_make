import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_project_make/models/news_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetails extends StatefulWidget {
  final NewsModel newsModel;
  const NewsDetails({super.key, required this.newsModel});

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.newsModel.title.toString()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5,),
            CachedNetworkImage(
              height: 250,
              width: double.infinity,
              fit: BoxFit.fitWidth,
              imageUrl: widget.newsModel.urlToImage.toString(),
              placeholder: (context, url) => Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Container(
                  child: Text(widget.newsModel.source!.name.toString()),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                ),
                SizedBox(width: 10,),
                Text(widget.newsModel.publishedAt!),
              ],
            ),
            SizedBox(height: 5,),
            Text(widget.newsModel.author!.toString()),
            SizedBox(height: 5,),
            Text(widget.newsModel.title!.toString()),
            SizedBox(height: 5,),
            Text(widget.newsModel.description!.toString()),
            SizedBox(height: 5,),
            ElevatedButton(
              onPressed: () async{
                final Uri uri= Uri.parse(widget.newsModel.url.toString());
                if(!await launchUrl(uri)){
                  throw Exception("Couldn't launch");
                }
              },
              child: Text('Read more...'),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue) 
              ),
            )
          ],
        ),
      ),
    );
  }
}
