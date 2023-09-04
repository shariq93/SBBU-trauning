import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(Object context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My Flutter App"),
          ),
          body: Column(
            children: [
              Text(
                "Counter: $counter",
                style: const TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                      counter++;
                  });
                },
                child: Text("Add"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                      counter--;
                  });
                },
                child: Text("Minus"),
              ),
            ],
          )),
    );
  }
}
