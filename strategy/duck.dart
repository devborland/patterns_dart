import 'fly_behavior.dart';
import 'quack_behavior.dart';

abstract class Duck {
  late FlyBehavior _flyBehavior;
  late QuackBehavior _quackBehavior;

  void setFlyBehavior(FlyBehavior flyBehavior) {
    _flyBehavior = flyBehavior;
  }

  void setQuackBehavior(QuackBehavior quackBehavior) {
    _quackBehavior = quackBehavior;
  }

  void display();

  void performFly() => _flyBehavior.fly();

  void performQuack() => _quackBehavior.quack();

  void swim() => print("All ducks float, even decoys!");
}
