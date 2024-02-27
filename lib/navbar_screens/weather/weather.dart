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
        // centerTitle: true,
        title: const Text('मौसम'),
        shadowColor: Colors.white,
        backgroundColor: Colors.orange[100],
      ),
      // backgroundColor: Colors.lightGreen,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              // controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Enter City Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1.0,
                  ),
                ),
                filled: true,
                fillColor: Colors.grey.withOpacity(0.1),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.7),
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          Column(
            children: [
              //city name
              Text(
                _weather?.cityName ?? "जानकारी ली जा रही है....",
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              //tempreture
              Text(
                '${_weather?.temp.round()}°C',
                style: const TextStyle(fontSize: 20),
              )
            ],
          ),
        ],
      ),
    );
  }
}
