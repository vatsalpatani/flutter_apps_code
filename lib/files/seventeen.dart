import 'package:flutter/material.dart';

class SeventeenPage extends StatelessWidget {
  const SeventeenPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: <Widget>[
          const Spacer(),
          const Center(
              child: Text(
            "Spacer",
            style: TextStyle(fontSize: 20.0),
          )),
          const Spacer(flex: 5),
          IconButton(
              icon: const Icon(Icons.settings_overscan), onPressed: () => {}),
          const Spacer(),
          IconButton(
              icon: const Icon(Icons.settings_overscan), onPressed: () => {})
        ]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Dummy',
              )
            ],
          ),
        ));
  }
}
