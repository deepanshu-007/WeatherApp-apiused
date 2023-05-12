class Weather{
  String? cityname;
  double? temp;
  double? wind;
  int? humidity;
  double? feels_like;
  int? pressure;
  Weather({
    this.cityname,
    this.temp,
    this.feels_like,
    this.humidity,
    this.pressure,
    this.wind});

  Weather.fromJson(Map<String, dynamic>Json){
    cityname = Json["name"];
    temp = Json["main"]["temp"];
    wind = Json["wind"]["speed"];
    pressure = Json["main"]["pressure"];
    humidity = Json["main"]["humidity"];
    feels_like = Json["main"]["feels_like"];

  }
}