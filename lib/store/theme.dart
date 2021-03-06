import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'theme.g.dart';

class MyTheme = _MyTheme with _$MyTheme;

abstract class _MyTheme with Store {
  @observable
  ThemeData data = ThemeData.fallback();

  @action
  Icon icon() {
    if (data == ThemeData.fallback()) {
      return Icon(Icons.dark_mode);
    } else {
      return Icon(Icons.light_mode);
    }
  }

  @action
  void toggle() {
    if (data == ThemeData.fallback()) {
      data = ThemeData.dark();
    } else {
      data = ThemeData.fallback();
    }
  }
}

/*
COMMAND TO GENERATE FILES:

flutter packages pub run build_runner build
or
flutter packages pub run build_runner watch
*/