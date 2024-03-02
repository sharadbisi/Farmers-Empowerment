class Weather {
  final String cityName;
  final double temp;
  final String mainCondition;
  final double humidity; // Add a field for humidity
  final double? rain;// Add a field for precipitation
  final double? snow;
  // final int windSpeed;

  Weather({
    required this.cityName,
    required this.temp,
    required this.mainCondition,
    required this.humidity,
    // required this.windSpeed,
    this.rain,
    this.snow
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temp: json['main']['temp'].toDouble(),
      mainCondition: json['weather'][0]['description'],//mainCondition: json['weather'][0]['main'],
      humidity: json['main']['humidity'], // Get humidity from the JSON
      // windSpeed: json['wind']['speed'].toDouble(), 
      rain: json['rain']?['1h'], // Parse rain volume for the last 1 hour if available
      snow: json['snow']?['1h'],
    );
  }
}
