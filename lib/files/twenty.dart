// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';

class TwentyPage extends StatefulWidget {
  String computeListOfTimestamps(int count) {
    StringBuffer sb = StringBuffer();
    for (int i = 0; i < count; i++) {
      sb.writeln("${i + 1} : ${DateTime.now()}");
    }
    return sb.toString();
  }

  Future<String> createFutureCalculation(int count) {
    return Future(() {
      return computeListOfTimestamps(count);
    });
  }

  const TwentyPage({Key? key}) : super(key: key);
  @override
  _TwentyPageState createState() => _TwentyPageState();
}

class _TwentyPageState extends State<TwentyPage> {
  bool _showCalculation = false;
  void _onInvokeFuturePressed() {
    setState(() {
      _showCalculation = !_showCalculation;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget child = _showCalculation
        ? FutureBuilder(
            future: widget.createFutureCalculation(10000),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return Expanded(
                  child: SingleChildScrollView(
                      child: Text('${snapshot.data ?? ""}',
                          style: const TextStyle(fontSize: 20.0))));
            })
        : const Text('hit the button to show calculation');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future"),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[child])),
      floatingActionButton: FloatingActionButton(
        onPressed: _onInvokeFuturePressed,
        tooltip: 'Invoke Future',
        child: const Icon(Icons.refresh),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
