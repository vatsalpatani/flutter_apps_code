// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

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
      home: const HomeWidget(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  bool _topExpanded = false;
  bool _bottomExpanded = false;
  toggleTop() {
    setState(() => _topExpanded = !_topExpanded);
  }

  toggleBottom() {
    setState(() => _bottomExpanded = !_bottomExpanded);
  }

  @override
  Widget build(BuildContext context) {
    Container topContainer = Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1.0),
          color: Colors.blue),
      padding: const EdgeInsets.all(10.0),
      child: const Text(
        'Top Container',
      ),
    );
    Container bottomContainer = Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1.0),
          color: Colors.yellow),
      padding: const EdgeInsets.all(10.0),
      child: const Text(
        'Bottom Container',
      ),
    );
    Widget topWidget =
        _topExpanded ? Expanded(child: topContainer) : topContainer;
    Widget bottomWidget =
        _bottomExpanded ? Expanded(child: bottomContainer) : bottomContainer;
    return Scaffold(
        appBar: AppBar(title: const Text("Expanded"), actions: <Widget>[
          FlatButton.icon(
              icon: Icon(_topExpanded ? Icons.expand_more : Icons.expand_less),
              label: const Text("Top"),
              onPressed: () => toggleTop()),
          FlatButton.icon(
              icon:
                  Icon(_bottomExpanded ? Icons.expand_less : Icons.expand_more),
              label: const Text("Bottom"),
              onPressed: () => toggleBottom())
        ]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[topWidget, bottomWidget],
          ),
        ));
  }
}
