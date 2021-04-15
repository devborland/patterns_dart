import 'current_conditions_display.dart';
import 'forecast_display.dart';
import 'statistics_display.dart';
import 'weather_data.dart';

main(List<String> args) {
  var weatherData = WeatherData();
  var currentDisplay = CurrenConditionsDisplay(weatherData);
  var forecastDisplay = ForecastDisplay(weatherData);
  var statsDisplay = StatisticDisplay(weatherData);

  weatherData.setMeasurements(60, 45, 30.2);
  print('');
  weatherData.setMeasurements(65, 50, 35.2);
  print('');
  weatherData.setMeasurements(70, 55, 20.2);
  print('');
}
