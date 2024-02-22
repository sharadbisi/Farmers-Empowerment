import 'package:farmer/navbar_screens/weather/weather_model.dart';
import 'package:farmer/navbar_screens/weather/weather_services.dart';
import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  //api key
  final _weatherService = WeatherService('0837bb789f0ea1efe2e8b12ecbb992d0');
  Weather? _weather;

  //fetch weather
  _fetchweather() async {
    //get the city
    String cityName = await _weatherService.getCurrentCity();

    //get weather for that city
    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    }
    //is any error
    catch (e) {
      print(e);
    }
  }

  // weather animations

  //initial state
  @override
  void initState() {
    super.initState();
    _fetchweather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Weather Report'),
        shadowColor: Colors.white,
        backgroundColor: Colors.orange[300],
      ),
      // backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //city name
            Text(_weather?.cityName ?? "loding city...."),

            //tempreture
            Text('${_weather?.temp.round()}°C')
          ],
        ),
      ),
    );
  }
}
