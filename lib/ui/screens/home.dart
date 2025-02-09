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
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Catgories',style: Theme.of(context).textTheme.titleLarge),
                      Text('Show all',style: Theme.of(context).textTheme.titleLarge),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
                          child: Column(
                            children: [
                              Icon(Icons.help),
                              SizedBox(height: 5,),
                              Text('Consultation',style: Theme.of(context).textTheme.titleSmall,),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
                          child: Column(
                            children: [
                              Icon(Icons.help),
                              SizedBox(height: 5,),
                              Text('Dentist',style: Theme.of(context).textTheme.titleSmall,),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
                          child: Column(
                            children: [
                              Icon(Icons.help),
                              SizedBox(height: 5,),
                              Text('Cardiologist',style: Theme.of(context).textTheme.titleSmall,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
                          child: Column(
                            children: [
                              Icon(Icons.help),
                              SizedBox(height: 5,),
                              Text('Consultation',style: Theme.of(context).textTheme.titleSmall,),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
                          child: Column(
                            children: [
                              Icon(Icons.help),
                              SizedBox(height: 5,),
                              Text('Dentist',style: Theme.of(context).textTheme.titleSmall,),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
                          child: Column(
                            children: [
                              Icon(Icons.help),
                              SizedBox(height: 5,),
                              Text('Cardiologist',style: Theme.of(context).textTheme.titleSmall,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text('Top Doctors',style: Theme.of(context).textTheme.titleLarge,),
                  Column(
                    children: [
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                              ),
                              SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Mahfuz',style: Theme.of(context).textTheme.titleLarge,),
                                  Text('Consultant',style: Theme.of(context).textTheme.titleSmall),
                                  Text('Consultant',style: textTheme.titleSmall?.copyWith(
                                    fontSize: 10,
                                  ),),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                              ),
                              SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Mahfuz',style: Theme.of(context).textTheme.titleLarge,),
                                  Text('Consultant',style: Theme.of(context).textTheme.titleSmall),
                                  Text('Consultant',style: textTheme.titleSmall?.copyWith(
                                    fontSize: 10,
                                  ),),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                              ),
                              SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Mahfuz',style: Theme.of(context).textTheme.titleLarge,),
                                  Text('Consultant',style: Theme.of(context).textTheme.titleSmall),
                                  Text('Consultant',style: textTheme.titleSmall?.copyWith(
                                    fontSize: 10,
                                  ),),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        color: Colors.white,
                        child: SizedBox(
                          width: double.infinity,
                          height: 70,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                              ),
                              SizedBox(width: 5,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Mahfuz',style: Theme.of(context).textTheme.titleLarge,),
                                  Text('Consultant',style: Theme.of(context).textTheme.titleSmall),
                                  Text('Consultant',style: textTheme.titleSmall?.copyWith(
                                    fontSize: 10,
                                  ),),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.home), label: 'Doctors'),
          NavigationDestination(icon: Icon(Icons.calendar_month), label: 'Appointment'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        backgroundColor: Color(0xFF5966f9),
        indicatorColor: Color(0xFF5966f9),
      ),
    );
  }
}
