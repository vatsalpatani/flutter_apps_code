import 'package:flutter/material.dart';

void main() => runApp(const StackPleaseWaitAppWidget());

class StackPleaseWaitAppWidget extends StatelessWidget {
  const StackPleaseWaitAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeWidget(title: 'Card Layout Demo'),
    );
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  final PleaseWaitWidget _pleaseWaitWidget =
      const PleaseWaitWidget(key: ObjectKey("pleaseWaitWidget"));
  final AppWidget _appWidget = const AppWidget(key: ObjectKey("appWidget"));
  @override
  // ignore: library_private_types_in_public_api
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  bool _pleaseWait = false;
  void _togglePleaseWait() {
    setState(() {
      _pleaseWait = !_pleaseWait;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> childWidgets = _pleaseWait
        ? [widget._pleaseWaitWidget, widget._appWidget]
        : [widget._appWidget];
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child:
                Stack(key: const ObjectKey("stack"), children: childWidgets)),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: _togglePleaseWait,
            label: const Text('Please Wait On/Off'),
            icon: const Icon(Icons.cached)));
  }
}

class PleaseWaitWidget extends StatelessWidget {
  const PleaseWaitWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey.withOpacity(0.3),
        child: const Center(
          child: CircularProgressIndicator(strokeWidth: 8.0),
        ));
  }
}

class AppWidget extends StatelessWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const <Widget>[
          Text('Your', style: TextStyle(fontSize: 20.0)),
          Text('App', style: TextStyle(fontSize: 20.0)),
          Text('Goes', style: TextStyle(fontSize: 20.0)),
          Text('Here', style: TextStyle(fontSize: 20.0))
        ],
      ),
    );
  }
}
