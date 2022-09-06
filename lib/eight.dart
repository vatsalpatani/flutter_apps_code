// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'package:flutter/material.dart';

class EightPage extends StatefulWidget {
  const EightPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _EightPageState createState() => _EightPageState();
}

class _EightPageState extends State<EightPage> {
  String _log = '';
  void _clear() {
    setState(() {
      _log = '';
    });
  }

  void _logGesture(String logText) {
    setState(() {
      _log += "\n";
      _log += logText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                  child: const Text(
                    'Gesture Me',
                  ),
                  onTap: () => _logGesture('tap'),
                  onTapDown: (details) => _logGesture('onTapDown: $details'),
                  onTapUp: (details) => _logGesture('onTapUp: $details'),
                  onTapCancel: () => _logGesture('onTapCancel'),
                  onDoubleTap: () => _logGesture('onDoubleTap'),
                  onLongPress: () => _logGesture('onLongPress'),
                  onVerticalDragDown: (details) =>
                      _logGesture('onVerticalDragDown: $details'),
                  onVerticalDragStart: (details) =>
                      _logGesture('onVerticalDragStart: $details'),
                  onVerticalDragUpdate: (details) =>
                      _logGesture('onVerticalDragUpdate'),
                  onVerticalDragEnd: (details) =>
                      _logGesture('onVerticalDragEnd: $details'),
                  onVerticalDragCancel: () =>
                      _logGesture('onVerticalDragCancel'),
                  onHorizontalDragDown: (details) =>
                      _logGesture('onHorizontalDragDown: $details'),
                  onHorizontalDragStart: (details) =>
                      _logGesture('onHorizontalDragStart: $details'),
                  onHorizontalDragUpdate: (details) =>
                      _logGesture('onHorizontalDragUpdate: $details'),
                  onHorizontalDragEnd: (details) =>
                      _logGesture('onHorizontalDragEnd: $details'),
                  onHorizontalDragCancel: () =>
                      _logGesture('onHorizontalDragCancel')),
              Container(
                  constraints: const BoxConstraints(maxHeight: 200.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  )),
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(child: Text(_log))),
              RaisedButton(
                  child: const Text('Clear'), onPressed: () => _clear())
            ],
          ),
        ));
  }
}
