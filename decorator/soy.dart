import 'beverage.dart';
import 'condiment_decorator.dart';

class Soy extends CondimentDecorator {
  final Beverage beverage;

  Soy(this.beverage);

  @override
  double cost() => beverage.cost() + 0.15;

  String getDescription() => beverage.getDescription() + ', Soy';
}
