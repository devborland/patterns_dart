import 'beverage.dart';

class HouseBlend extends Beverage {
  HouseBlend() {
    description = 'House Blend Coffe';
  }

  @override
  double cost() => 0.89;
}
