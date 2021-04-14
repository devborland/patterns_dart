import 'current_conditions_display.dart';
import 'weather_data.dart';

main(List<String> args) {
  var weatherData = WeatherData();
  var currentDisplay = CurrenConditionsDisplay(weatherData);

  weatherData.setMeasurements(60, 45, 30.2);
  weatherData.setMeasurements(65, 50, 35.2);
  weatherData.setMeasurements(70, 55, 40.2);
}
