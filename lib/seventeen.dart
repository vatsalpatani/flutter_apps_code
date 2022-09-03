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
      home: const HomePageWidget(),
    );
  }
}

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({Key? key}) : super(key: key);
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
