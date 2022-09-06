// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class SevenPage extends StatefulWidget {
  const SevenPage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _SevenPageState createState() => _SevenPageState();
}

class _SevenPageState extends State<SevenPage> {
  bool _topTightFit = false;
  bool _bottomExpanded = false;
  toggleTop() {
    setState(() => _topTightFit = !_topTightFit);
  }

  toggleBottom() {
    setState(() => _bottomExpanded = !_bottomExpanded);
  }

  @override
  Widget build(BuildContext context) {
    Container topContainer = Container(
      constraints: const BoxConstraints(
          minHeight: 100.0, minWidth: 100.0, maxHeight: 200.0, maxWidth: 200.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1.0),
          color: Colors.blue),
      padding: const EdgeInsets.all(10.0),
      child: const Text(
        'Top Container',
      ),
    );
    Container bottomContainer = Container(
      constraints: const BoxConstraints(
          minHeight: 100.0, minWidth: 100.0, maxHeight: 200.0, maxWidth: 200.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1.0),
          color: Colors.yellow),
      padding: const EdgeInsets.all(10.0),
      child: const Text(
        'Bottom Container',
      ),
    );
    Widget topWidget = Flexible(
        fit: _topTightFit ? FlexFit.tight : FlexFit.loose, child: topContainer);
    Widget bottomWidget =
        _bottomExpanded ? Expanded(child: bottomContainer) : bottomContainer;
    String toolbarTextTop = "Top (${_topTightFit ? "tight" : "loose"})";
    String toolbarTextBottom =
        "Bottom (${_bottomExpanded ? "expanded" : "not expanded"})";
    return Scaffold(
        appBar: AppBar(title: const Text("Expanded"), actions: <Widget>[
          FlatButton.icon(
              icon: Icon(_topTightFit
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_up),
              label: Text(toolbarTextTop),
              onPressed: () => toggleTop()),
          FlatButton.icon(
              icon: Icon(_bottomExpanded
                  ? Icons.keyboard_arrow_down
                  : Icons.keyboard_arrow_down),
              label: Text(toolbarTextBottom),
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
