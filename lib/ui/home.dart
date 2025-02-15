import 'package:demo_project_make/model/weather_model.dart';
import 'package:demo_project_make/service/api_service.dart';
import 'package:demo_project_make/ui/components/future_forecast_list_item.dart';
import 'package:demo_project_make/ui/components/hourly_weather_list_item.dart';
import 'package:demo_project_make/ui/components/todays_weather.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ApiService apiService=ApiService();
  final _searchTEController=TextEditingController();
  String search="Dhaka";

  _showTextInputDialog (BuildContext contex) async{
    return showDialog(context: contex, builder: (contex){
      return AlertDialog(
        title: Text('Search Location'),
        content: TextField(
          controller: _searchTEController,
          decoration: InputDecoration(
            hintText: 'City',
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            }, child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              if(_searchTEController.text.isEmpty){
                return;
              }
              Navigator.pop(context,_searchTEController.text);
            }, child: Text('Ok'),
          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Weather App'),
        actions: [
          IconButton(
            onPressed: ()async {
              _searchTEController.clear();
             String text=await  _showTextInputDialog(context);
             setState(() {
               search=text;
             });
            }, 
            icon: Icon(Icons.search)),
          IconButton(onPressed: () {
            search='Dhaka';
            setState(() {

            });
          }, icon: Icon(Icons.my_location)),
        ],
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: apiService.getWeatherData(search),
          builder: (context,snapShot){
            if(snapShot.hasData){
              WeatherModel? weatherModel=snapShot.data;
              return SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TodaysWeather(
                      weatherModel: weatherModel,
                    ),
                    SizedBox(height: 10,),
                    Text('Weather by hours',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: weatherModel!.forecast!.forecastday![0].hour!.length,
                        itemBuilder: (context,index){
                          Hour hour=weatherModel.forecast!.forecastday![0].hour![index];
                          return HourlyWeatherListItem(hour: hour,);
                        },
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Next 7 days Weather',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                      child: ListView.builder(
                        itemCount: weatherModel.forecast!.forecastday!.length,
                        itemBuilder: (context,index){
                          Forecastday? forecastday=weatherModel.forecast!.forecastday![index];
                          return FutureForecastListItem(forecastday: forecastday);
                        },
                      ),
                    )
                  ],
                ),
              );
            }
            if(snapShot.hasError){
              Center(child: Text('Something went wrong'),);
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
