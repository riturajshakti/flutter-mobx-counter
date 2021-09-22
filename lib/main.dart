import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'store/counter.dart';
import 'store/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final counter = Counter();
  final theme = MyTheme();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme.data,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Counter: ${counter.value}'),
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${counter.value}',
                  style: TextStyle(fontSize: 100),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: counter.increment,
                      icon: Icon(Icons.add),
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      onPressed: counter.decrement,
                      icon: Icon(Icons.remove),
                    ),
                  ],
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: theme.toggle,
            child: Icon(
              isLight(theme.data) ? Icons.dark_mode : Icons.light_mode,
            ),
          ),
        ),
      ),
    );
  }
}

bool isLight(ThemeData theme) {
  return theme == ThemeData.fallback();
}
