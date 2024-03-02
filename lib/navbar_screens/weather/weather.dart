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
  String getWeatherCondition(String? mainCondition) {
    if (mainCondition == null) return 'images/weather/sun.png';
    switch (mainCondition.toLowerCase()) {
      case 'clouds':
      case 'mist':
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog':
        return 'images/weather/cloudy.png';

      case 'rain':
      case 'drizzle':
      case 'shower rain':
        return 'images/weather/rainy-day.png';

      case 'thunderstorm':
        return 'images/weather/thunder.png';

      case 'clear':
        return 'images/weather/sun.png';

      default:
        return 'images/weather/sun.png';
    }
  }

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
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 16.0),
                hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.7),
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          Column(
            children: [
              //city name
              Text(
                _weather?.cityName ?? "Loding....",
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              //image
              Image.asset(
                getWeatherCondition(_weather?.mainCondition),
                height: 100,
              ),
              const SizedBox(height: 20),
              //tempreture and condition
              Text(
                '${_weather?.temp.round()}°C ${_weather?.mainCondition ?? ""}',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 18),
                        child: Column(
                          children: [
                            Image.asset('images/weather/precipitation.png',
                                height: 40),
                            // const Text('30',style: TextStyle(fontWeight: FontWeight.bold)),
                            if (_weather?.rain != null)
                              Text(
                                'Rain: ${_weather!.rain}mm',
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                            if (_weather?.snow != null)
                              Text(
                                'Snow: ${_weather!.snow}mm',
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                            if ((_weather?.rain) == null)
                            const Text('NA',style: TextStyle(fontWeight: FontWeight.bold)),
                            const Text('Precipitation')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Column(
                          children: [
                            Image.asset('images/weather/humidity.png',
                                height: 40),
                            Text(
                              '${_weather?.humidity ?? ''}%',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Text('Humidity')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 18),
                        child: Column(
                          children: [
                            Image.asset('images/weather/wind.png', height: 40),
                            // Text('${_weather?.windSpeed ?? ''} m/s'),
                            // Text('${_weather?.windSpeed ?? ''}km/h',style:const TextStyle (fontWeight: FontWeight.bold)),
                            const Text('10 km/h',style: TextStyle(fontWeight: FontWeight.bold)),
                             const Text('Wind Speed')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                '7 Days Wather Forecasting',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              const SizedBox(width: 10),

              ///ADDING 7 DAYS FORECASTING
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // my 1 container
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 120,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8, top: 18),
                              child: Column(
                                children: [
                                  const Text('10 AM',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Image.asset('images/weather/cloudy.png',
                                      height: 40),
                                  const Text('30°C')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //2nd container
                    const SizedBox(width: 10),
                    Container(
                      height: 120,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 18),
                            child: Column(
                              children: [
                                const Text('12 AM',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Image.asset('images/weather/cloudy.png',
                                    height: 40),
                                const Text('32°C')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //3rd
                    const SizedBox(width: 10),
                    Container(
                      height: 120,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 18),
                            child: Column(
                              children: [
                                const Text('2 AM',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Image.asset('images/weather/cloudy.png',
                                    height: 40),
                                const Text('33°C')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //4th
                    const SizedBox(width: 10),
                    Container(
                      height: 120,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 18),
                            child: Column(
                              children: [
                                const Text('12 AM',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Image.asset('images/weather/cloudy.png',
                                    height: 40),
                                const Text('32°C')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //5th
                    const SizedBox(width: 10),
                    Container(
                      height: 120,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 18),
                            child: Column(
                              children: [
                                const Text('12 AM',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Image.asset('images/weather/cloudy.png',
                                    height: 40),
                                const Text('32°C')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //6th
                    const SizedBox(width: 10),
                    Container(
                      height: 120,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 18),
                            child: Column(
                              children: [
                                const Text('12 AM',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Image.asset('images/weather/cloudy.png',
                                    height: 40),
                                const Text('32°C')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //7th
                    const SizedBox(width: 10),
                    Container(
                      height: 120,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 18),
                            child: Column(
                              children: [
                                const Text('12 AM',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Image.asset('images/weather/cloudy.png',
                                    height: 40),
                                const Text('32°C')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
