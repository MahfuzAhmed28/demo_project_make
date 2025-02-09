import 'package:demo_project_make/ui/screens/home.dart';
import 'package:flutter/material.dart';

class DoctorAppointment extends StatelessWidget {
  const DoctorAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w600
          )
        )
      ),
      onGenerateRoute: (RouteSettings settings){
        late Widget widget;
        if(settings.name=='/'){
          widget=Home();
        }
        return MaterialPageRoute(builder: (_) => widget);
      },
    );

  }
}
