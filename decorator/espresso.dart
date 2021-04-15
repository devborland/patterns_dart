import 'beverage.dart';

class Espresso extends Beverage {
  Espresso() {
    description = 'Espresso';
  }

  @override
  double cost() => 1.99;
}
