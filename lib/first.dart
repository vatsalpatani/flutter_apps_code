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
        home: const HomeWidget(title: 'Flex'));
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeWidget> {
  final List<MainAxisAlignment> _alignments = [
    MainAxisAlignment.start,
    MainAxisAlignment.end,
    MainAxisAlignment.center,
    MainAxisAlignment.spaceBetween,
    MainAxisAlignment.spaceEvenly,
    MainAxisAlignment.spaceAround
  ];

  final List<String> _alignmentsText = [
    "Start",
    "End",
    "Center",
    "Space Between",
    "Space Evenly",
    "Space Around"
  ];
  bool _vertical = true;
  int _alignmentIndex = 0;

  RawMaterialButton redButton = RawMaterialButton(
      onPressed: () {}, elevation: 2.0, fillColor: Colors.red);
  RawMaterialButton greenButton = RawMaterialButton(
    onPressed: () {},
    elevation: 2.0,
    fillColor: Colors.green,
  );
  RawMaterialButton blueButton = RawMaterialButton(
    onPressed: () {},
    elevation: 2.0,
    fillColor: Colors.blue,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.rotate_right),
              tooltip: 'Direction',
              onPressed: () {
                setState(() {
                  _vertical = !_vertical;
                });
              },
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(_vertical ? "Vertical" : "Horizontal")),
            IconButton(
              icon: const Icon(Icons.aspect_ratio),
              tooltip: 'Main axis',
              onPressed: () {
                setState(() {
                  _alignmentIndex++;
                  if (_alignmentIndex >= _alignments.length) {
                    _alignmentIndex = 0;
                  }
                });
              },
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(_alignmentsText[_alignmentIndex])),
            const Padding(
              padding: EdgeInsets.all(10.0),
            )
          ],
        ),
        body: Flex(
          direction: _vertical ? Axis.vertical : Axis.horizontal,
          mainAxisAlignment: _alignments[_alignmentIndex],
          children: <Widget>[redButton, greenButton, blueButton],
        ));
  }
}
