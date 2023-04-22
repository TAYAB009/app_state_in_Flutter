import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State {
  String title = 'My favorite fruit is ';
  String fruit = 'Unknown';
  void callback(varFruit) {
    setState(() {
      fruit = varFruit;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(title + fruit),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FruitButton(fruit: 'Apple', callback: callback),
              FruitButton(fruit: 'Oranges', callback: callback),
              FruitButton(fruit: 'Mangoes', callback: callback),
            ],
          ),
        ),
      ),
    );
  }
}

class FruitButton extends StatelessWidget {
  final String fruit;
  final Function callback;

  const FruitButton({required this.fruit, required this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          callback(fruit);
        },
        child: Text(fruit));
  }
}
