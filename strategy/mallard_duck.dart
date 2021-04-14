import 'duck.dart';
import 'fly_behavior.dart';
import 'fly_no_way.dart';
import 'fly_with_wings.dart';
import 'quack.dart';
import 'quack_behavior.dart';

class MallardDuck extends Duck {
  // QuackBehavior quackBehavior = Quack();
  // FlyBehavior flyBehavior = FlyWithWings();

  MallardDuck() {
    super.setQuackBehavior(Quack());
    super.setFlyBehavior(FlyWithWings());
  }

  @override
  void display() => print("I'm real Mallard duck");
}
