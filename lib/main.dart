import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main()
{
  runApp(DevicePreview(
      builder: (contex) =>MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Create Account',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
                hintText: 'Name',
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                fillColor: Colors.white10,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.white10,
                  )
                )
              )
            ),
            SizedBox(height: 20,),
            TextFormField(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
                    hintText: 'Email Address',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,

                    ),
                    fillColor: Colors.white10,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white10,
                        )
                    )
                )
            ),
            SizedBox(height: 20,),
            TextFormField(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
                obscureText: true,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,

                    ),
                    fillColor: Colors.white10,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white10,
                        )
                    )
                )
            ),
            SizedBox(height: 20,),
            TextFormField(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
                obscureText: true,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,

                    ),
                    fillColor: Colors.white10,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white10,
                        )
                    )
                )
            ),
            SizedBox(height: 70,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 70,vertical: 30),
                textStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context)=>Profile())
                );
              },
              child: Text('Sign Up')
            ),

          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Hey, Mahfuz',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            //fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15
          ),
          children: [
            Container(
              width: 100,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Buy a Vegitable',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('Today, 10:00 PM',style: TextStyle(color: Colors.black),),
                    SizedBox(height: 5,),
                    Text('See More',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 60,),
                    Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Mark as read'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete,size: 30,),
                        )
                      ],
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(20)
              ),
            ),
            Container(
              width: 100,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Schedul a dentist',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('Today, 6:30 PM',style: TextStyle(color: Colors.black),),
                    SizedBox(height: 5,),
                    Text('See More',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 60,),
                    Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Mark as read'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete,size: 30,),
                        )
                      ],
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
            Container(
              width: 100,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('To send than you note to Jason',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('Today, 10:00 PM',style: TextStyle(color: Colors.black),),
                    SizedBox(height: 5,),
                    Text('See More',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
            Container(
              width: 100,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Follow-up email to Peter',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('Today, 10:00 PM',style: TextStyle(color: Colors.black),),
                    SizedBox(height: 5,),
                    Text('See More',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
            ),

          ],

        ),
      ),
    );
    
  }
}




