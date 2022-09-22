import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum PopupMenuAction { add1, add10, add100, exit }

class FifteenPage extends StatefulWidget {
  const FifteenPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _FifteenPageState createState() => _FifteenPageState();
}

class _FifteenPageState extends State<FifteenPage> {
  int _counter = 0;
  void _increment(int by) {
    setState(() {
      _counter += by;
    });
  }

  void _onPopupMenuSelected(PopupMenuAction item) {
    if (PopupMenuAction.exit == item) {
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    } else {
      _increment(PopupMenuAction.add1 == item
          ? 1
          : PopupMenuAction.add10 == item
              ? 10
              : 100);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            PopupMenuButton<PopupMenuAction>(
              onSelected: _onPopupMenuSelected,
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<PopupMenuAction>>[
                const PopupMenuItem<PopupMenuAction>(
                  value: PopupMenuAction.add1,
                  child: Text('+1'),
                ),
                const PopupMenuItem<PopupMenuAction>(
                  value: PopupMenuAction.add10,
                  child: Text('+10'),
                ),
                const PopupMenuItem<PopupMenuAction>(
                  value: PopupMenuAction.add100,
                  child: Text('+100'),
                ),
                const PopupMenuDivider(),
                const PopupMenuItem<PopupMenuAction>(
                  value: PopupMenuAction.exit,
                  child: Text('Exit'),
                ),
              ],
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ));
  }
}
