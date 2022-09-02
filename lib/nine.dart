import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _top = 0.0;
  double _left = 0.0;
  List<Widget> widgetList = [];
  final _random = Random();
  int next(int min, int max) => min + _random.nextInt(max - min);
  void _addLayer() {
    setState(() {
      widgetList.add(
        Positioned(
          left: _left,
          top: _top,
          child: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 2.0,
              ),
              color:
                  Color.fromRGBO(next(0, 255), next(0, 255), next(0, 255), 0.5),
            ),
          ),
        ),
      );
    });
    _top += 30;
    _left += 30;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Positioned"),
      ),
      body: Stack(children: widgetList),
      floatingActionButton: FloatingActionButton(
        onPressed: _addLayer,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
