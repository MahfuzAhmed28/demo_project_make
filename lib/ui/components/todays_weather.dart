import 'package:demo_project_make/model/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_bg_null_safety/bg/weather_bg.dart';
import 'package:flutter_weather_bg_null_safety/utils/weather_type.dart';
import 'package:intl/intl.dart';

class TodaysWeather extends StatelessWidget {

  const TodaysWeather({super.key, this.weatherModel});
  final WeatherModel? weatherModel;


  WeatherType getWeatherType(Current? current){
    if(current!.isDay==1){
      if(current.condition!.text=='Sunny'){
        return WeatherType.sunny;
      }
      else if(current.condition!.text=='OverCast'){
        return WeatherType.overcast;
      }
      else if(current.condition!.text=='Partly Cloudy'){
        return WeatherType.cloudy;
      }
      else if(current.condition!.text=='Cloudy'){
        return WeatherType.cloudy;
      }
      else if(current.condition!.text=='Mist'){
        return WeatherType.lightSnow;
      }
      else if(current.condition!.text!.contains('thunder')){
        return WeatherType.thunder;
      }
      else if(current.condition!.text=='rain'){
        return WeatherType.heavyRainy;
      }
      else if(current.condition!.text=='showers'){
        return WeatherType.middleSnow;
      }
      else if(current.condition!.text=='Clear'){
        return WeatherType.sunny;
      }
    }
    else{
      if(current.condition!.text=='Sunny'){
        return WeatherType.sunnyNight;
      }
      else if(current.condition!.text=='OverCast'){
        return WeatherType.overcast;
      }
      else if(current.condition!.text=='Partly Cloudy'){
        return WeatherType.cloudyNight;
      }
      else if(current.condition!.text=='Cloudy'){
        return WeatherType.cloudyNight;
      }
      else if(current.condition!.text=='Mist'){
        return WeatherType.lightSnow;
      }
      else if(current.condition!.text!.contains('thunder')){
        return WeatherType.thunder;
      }
      else if(current.condition!.text=='rain'){
        return WeatherType.heavyRainy;
      }
      else if(current.condition!.text=='showers'){
        return WeatherType.middleSnow;
      }
      else if(current.condition!.text=='Clear'){
        return WeatherType.sunnyNight;
      }
    }
    return WeatherType.sunny;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WeatherBg(weatherType: getWeatherType(weatherModel!.current), width: MediaQuery.of(context).size.width, height: 300),
        SizedBox(
          width: double.infinity,
          height: 300,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(weatherModel!.location!.name ?? '',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(DateFormat.yMMMMEEEEd().format(DateTime.parse(weatherModel!.current!.lastUpdated.toString() ?? '')),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white10
                    ),
                    child: Image.network(weatherModel!.current!.condition!.icon.toString() ?? ''),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Text(weatherModel!.current!.tempC!.round().toString() ?? '',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                              ),
                            ),
                          ),
                          Text("o",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 15),),
                          SizedBox(width: 10,),
                        ],
                      ),
                      Text(weatherModel!.current!.condition!.text ?? '',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text('Feels like',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text(weatherModel!.current!.feelslikeC!.round().toString() ??'',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Wind',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text('${weatherModel!.current!.windKph!.round().toString()} Km/h' ??'',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text('Humidity',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text('${weatherModel!.current!.humidity.toString()}%' ??'',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Visibility',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text('${weatherModel!.current!.visKm!.round().toString()} Km' ??'',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),

              )

              
            ],
          ),
        )
      ],
    );
  }
}
