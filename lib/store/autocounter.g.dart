// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocounter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AutoCounter on _AutoCounter, Store {
  final _$valueAtom = Atom(name: '_AutoCounter.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$timerAtom = Atom(name: '_AutoCounter.timer');

  @override
  Timer get timer {
    _$timerAtom.reportRead();
    return super.timer;
  }

  @override
  set timer(Timer value) {
    _$timerAtom.reportWrite(value, super.timer, () {
      super.timer = value;
    });
  }

  final _$_AutoCounterActionController = ActionController(name: '_AutoCounter');

  @override
  void stop() {
    final _$actionInfo =
        _$_AutoCounterActionController.startAction(name: '_AutoCounter.stop');
    try {
      return super.stop();
    } finally {
      _$_AutoCounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resume() {
    final _$actionInfo =
        _$_AutoCounterActionController.startAction(name: '_AutoCounter.resume');
    try {
      return super.resume();
    } finally {
      _$_AutoCounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void pause() {
    final _$actionInfo =
        _$_AutoCounterActionController.startAction(name: '_AutoCounter.pause');
    try {
      return super.pause();
    } finally {
      _$_AutoCounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo =
        _$_AutoCounterActionController.startAction(name: '_AutoCounter.reset');
    try {
      return super.reset();
    } finally {
      _$_AutoCounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
timer: ${timer}
    ''';
  }
}
