import 'dart:convert';

import 'package:demo_project_make/model/weather_model.dart';
import 'package:demo_project_make/constant/constants.dart';
import 'package:http/http.dart';

class ApiService{


  Future<WeatherModel> getWeatherData(String city) async{
    String url='$base_url&q=$city&days=7';

    try{
      Response response=await get(Uri.parse(url));
      if(response.statusCode==200){
        Map<String,dynamic> json=jsonDecode(response.body);
        WeatherModel weatherModel=WeatherModel.fromJson(json);
        return weatherModel;
      }
      else{
        throw('No data Found');
      }
    }
    catch(e){
      print(e.toString());
      throw e.toString();
    }
  }

}