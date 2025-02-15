import 'package:demo_project_make/model/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FutureForecastListItem extends StatelessWidget {
  const FutureForecastListItem({super.key, this.forecastday,});
  final Forecastday? forecastday;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.network(forecastday!.day!.condition!.icon.toString() ?? ''),
          Expanded(
            child: Text(DateFormat.MMMEd().format(DateTime.parse(forecastday!.day.toString() ?? '')),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Text(forecastday!.day!.condition!.text.toString() ?? '',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Text('^${forecastday!.day!.maxtempC!.round().toString()}/${forecastday!.day!.mintempC!.round().toString()}',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
