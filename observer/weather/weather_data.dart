import 'observer.dart';
import 'subject.dart';

class WeatherData implements Subject {
  late List<Observer> observers;
  double temp = 0;
  double humidity = 0;
  double pressure = 0;
  WeatherData() {
    observers = <Observer>[];
  }

  @override
  void registerObserver(Observer observer) {
    observers.add(observer);
  }

  @override
  void removeObserver(Observer observer) {
    observers.remove(observer);
  }

  @override
  void notifyObservers() {
    for (Observer observer in observers) {
      observer.update(temp, humidity, pressure);
    }
  }

  void measurmentChanged() {
    notifyObservers();
  }

  void setMeasurements(double temp, double humidity, double pressure) {
    this.temp = temp;
    this.humidity = humidity;
    this.pressure = pressure;
    measurmentChanged();
  }

  double get getTemperature => temp;
  double get getHumidity => humidity;
  double get getPressure => pressure;
}
