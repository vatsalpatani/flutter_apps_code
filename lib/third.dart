import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
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
  // ignore: constant_identifier_names
  static const double TWENTY = 20.0;
  static const List<String> _titles = [
    "all 20.0",
    "left 20.0",
    "right 20.0",
    "top 20.0",
    "bottom 20.0",
    "sym horiz 20.0",
    "sym vert 20.0"
  ];
  static const List<EdgeInsets> _edgeInsets = [
    EdgeInsets.all(TWENTY),
    EdgeInsets.only(left: TWENTY),
    EdgeInsets.only(right: TWENTY),
    EdgeInsets.only(top: TWENTY),
    EdgeInsets.only(bottom: TWENTY),
    EdgeInsets.symmetric(horizontal: TWENTY),
    EdgeInsets.symmetric(vertical: TWENTY)
  ];
  int _index = 0;
  final Container _childContainer = Container(color: Colors.blue);
  void _next() {
    setState(() {
      _index++;
      if (_index >= _titles.length) {
        _index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Padding padding =
        Padding(padding: _edgeInsets[_index], child: _childContainer);
    return Scaffold(
        appBar: AppBar(
          title: Text(_titles[_index]),
          actions: [
            IconButton(
                icon: const Icon(Icons.refresh), onPressed: () => _next())
          ],
        ),
        body: Center(
            child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                child: padding)));
  }
}
