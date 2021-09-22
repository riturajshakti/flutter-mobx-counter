import 'dart:async';

import 'package:mobx/mobx.dart';

part 'autocounter.g.dart';

class AutoCounter = _AutoCounter with _$AutoCounter;

abstract class _AutoCounter with Store {
  _AutoCounter() {
    timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) => value++,
    );
  }

  @observable
  int value = 0;

  @observable
  Timer timer;

  @action
  void stop() {
    timer.cancel();
    value = 0;
  }

  @action
  void resume() {
    timer.cancel();
    timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) => value++,
    );
  }

  @action
  void pause() {
    timer.cancel();
  }

  @action
  void reset() {
    timer.cancel();
    value = 0;
  }
}


/*
COMMAND TO GENERATE FILES:

flutter packages pub run build_runner build
or
flutter packages pub run build_runner watch
*/