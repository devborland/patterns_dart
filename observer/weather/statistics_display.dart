import 'display_element.dart';
import 'observer.dart';
import 'weather_data.dart';

class StatisticDisplay with DisplayElement implements Observer {
  double _maxTemp = 0.0;
  double _minTemp = 200;
  double _tempSum = 0.0;
  int _numReadings = 1;
  late WeatherData weatherData;

  StatisticDisplay(this.weatherData) {
    weatherData.registerObserver(this);
  }

  @override
  void display() {
    print(
        "Avg/Max/Min temparature : ${(_tempSum / _numReadings)} / $_maxTemp / $_minTemp");
  }

  @override
  void update(double temp, double humidity, double pressure) {
    _tempSum += temp;
    _numReadings++;

    if (temp > _maxTemp) {
      _maxTemp = temp;
    }

    if (temp < _minTemp) {
      _minTemp = temp;
    }

    display();
  }
}
