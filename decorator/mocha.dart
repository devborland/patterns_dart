import 'beverage.dart';
import 'condiment_decorator.dart';

class Mocha extends CondimentDecorator {
  final Beverage beverage;

  Mocha(this.beverage);

  @override
  double cost() => beverage.cost() + 0.20;

  String getDescription() => beverage.getDescription() + ', Mocha';
}
