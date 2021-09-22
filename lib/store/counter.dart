import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int value = 0;

  @action
  void increment() => value++;

  @action
  void reset() => value = 0;

  @action
  void decrement() => value--;
}


/*
COMMAND TO GENERATE FILES:

flutter packages pub run build_runner build
or
flutter packages pub run build_runner watch
*/