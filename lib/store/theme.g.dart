// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MyTheme on _MyTheme, Store {
  final _$dataAtom = Atom(name: '_MyTheme.data');

  @override
  ThemeData get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(ThemeData value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  final _$_MyThemeActionController = ActionController(name: '_MyTheme');

  @override
  Icon icon() {
    final _$actionInfo =
        _$_MyThemeActionController.startAction(name: '_MyTheme.icon');
    try {
      return super.icon();
    } finally {
      _$_MyThemeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggle() {
    final _$actionInfo =
        _$_MyThemeActionController.startAction(name: '_MyTheme.toggle');
    try {
      return super.toggle();
    } finally {
      _$_MyThemeActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
data: ${data}
    ''';
  }
}
