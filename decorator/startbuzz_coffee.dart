import 'beverage.dart';
import 'espresso.dart';
import 'house_blend.dart';
import 'mocha.dart';
import 'soy.dart';
import 'whip.dart';

main(List<String> args) {
  Beverage beverage = Espresso();
  print(beverage.getDescription() + " \$${beverage.cost()}");

  Beverage beverage2 = HouseBlend();
  beverage2 = Soy(beverage2);
  beverage2 = Whip(beverage2);
  beverage2 = Mocha(beverage2);
  print(beverage2.getDescription() + " \$${beverage2.cost()}");
}
