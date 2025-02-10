import 'package:demo_project_make/ui/all_news.dart';
import 'package:demo_project_make/ui/breaking_news.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Flutter News App'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Breaking News',),
              Tab(text: 'All News',),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            BreakingNews(),
            AllNews(),
          ],
        ),
      ),
    );
  }
}
