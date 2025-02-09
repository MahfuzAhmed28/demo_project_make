import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  static const name='/';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final textTheme=Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Color(0xFFAEB5F1),
      appBar: AppBar(
        backgroundColor: Color(0xFF5C6CF5),
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
            ),
            SizedBox(width: 8,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mahfuz Ahmed',
                    style: textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                    ),


                  ),
                  Text('mahfuz@gmail.com',
                    style: TextStyle(
                        fontSize: 10,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            )
          ],
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFF5C6CF5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)
                )
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search doctor',
                  fillColor: Colors.white,
                  filled: true,
                  iconColor: Colors.red,

                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
