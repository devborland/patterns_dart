import 'display_element.dart';
import 'observer.dart';
import 'weather_data.dart';

class ForecastDisplay with DisplayElement implements Observer {
  double currentPressure = 29.92;
  late double lastPressure;
  late WeatherData weatherData;

  ForecastDisplay(WeatherData weatherData) {
    this.weatherData = weatherData;
    weatherData.registerObserver(this);
  }

  @override
  void display() {
    if (currentPressure > lastPressure) {
      print("Forecast: Improving weather on the way");
    } else if (currentPressure == lastPressure) {
      print("Forecast: More of the same");
    } else if (currentPressure < lastPressure) {
      print("Forecast: Watch out for cooler, rainy weather");
    }
  }

  @override
  void update(double temp, double humidity, double pressure) {
    lastPressure = currentPressure;
    currentPressure = pressure;
    display();
  }
}
