import 'package:counter_app/store/autocounter.dart';
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
  final auto = AutoCounter();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme.data,
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Counter: ${counter.value}'),
                Text('Auto Counter: ${auto.value}'),
              ],
            ),
          ),
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
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
                      onPressed: counter.reset,
                      icon: Icon(Icons.circle_outlined),
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      onPressed: counter.decrement,
                      icon: Icon(Icons.remove),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Divider(color: Colors.black),
                SizedBox(height: 30),
                Text(
                  '${auto.value}',
                  style: TextStyle(fontSize: 100),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: auto.resume,
                      icon: Icon(Icons.play_arrow),
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      onPressed: auto.pause,
                      icon: Icon(Icons.pause),
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      onPressed: auto.reset,
                      icon: Icon(Icons.restart_alt),
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      onPressed: auto.stop,
                      icon: Icon(Icons.stop),
                    ),
                  ],
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: theme.toggle,
            child: theme.icon(),
          ),
        ),
      ),
    );
  }
}
