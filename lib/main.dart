// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  var title = '';

  String text = "No Value Entered";

  void _setText() {
    setState(() {
      _counter = int.parse(title);
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  SpeedDial buildSpeedDial() {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: const IconThemeData(size: 28.0),
      backgroundColor: Colors.blueAccent,
      visible: true,
      curve: Curves.bounceInOut,
      children: [
        SpeedDialChild(
          child: const Icon(Icons.add, color: Colors.white),
          backgroundColor: Colors.blue,
          onTap: _incrementCounter,
          label: 'Increment',
          labelStyle:
              const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: const Icon(Icons.remove, color: Colors.white),
          backgroundColor: Colors.blue,
          onTap: _decrementCounter,
          label: 'Decrement',
          labelStyle:
              const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: const Icon(Icons.exposure_zero_sharp, color: Colors.white),
          backgroundColor: Colors.blue,
          onTap: _reset,
          label: 'Reset',
          labelStyle:
              const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 19, 25, 47),
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counting App'),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    labelText: 'Enter a Number',
                    labelStyle: const TextStyle(color: Colors.white),
                    hintText: 'Enter a Number here',
                    hintStyle:
                        const TextStyle(fontSize: 20.0, color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                  onChanged: (value) => title = value,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Align(
                child: ElevatedButton.icon(
                  onPressed: _setText,
                  icon: const Icon(
                    Icons.send,
                  ),
                  label: const Text('Submit'),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'value = '
                  '$_counter',
                  style: TextStyle(
                    fontSize: 40,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = Colors.blue[700]!,
                  ),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
        floatingActionButton: buildSpeedDial(),
      ),
    );
  }
}
