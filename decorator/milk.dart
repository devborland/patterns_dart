import 'beverage.dart';
import 'condiment_decorator.dart';

class Milk extends CondimentDecorator {
  final Beverage beverage;

  Milk(this.beverage);

  @override
  double cost() => beverage.cost() + 0.10;

  String getDescription() => beverage.getDescription() + ', Milk';
}
