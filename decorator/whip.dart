import 'beverage.dart';
import 'condiment_decorator.dart';

class Whip extends CondimentDecorator {
  final Beverage beverage;

  Whip(this.beverage);

  @override
  double cost() => beverage.cost() + 0.10;

  String getDescription() => beverage.getDescription() + ', Whip';
}
