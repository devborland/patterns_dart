import 'display_element.dart';
import 'observer.dart';
import 'subject.dart';

class CurrenConditionsDisplay with DisplayElement implements Observer {
  late double temperature;
  late double humidity;
  late Subject weatherData;

  CurrenConditionsDisplay(Subject weatherData) {
    this.weatherData = weatherData;
    weatherData.registerObserver(this);
  }

  @override
  void display() {
    print(
        "Current conditions: $temperature F degrees and $humidity % humidity");
  }

  @override
  void update(double temp, double humidity, double pressure) {
    this.temperature = temp;
    this.humidity = humidity;
    display();
  }
}
