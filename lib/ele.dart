// ignore_for_file: avoid_print

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("AppBar"),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  print("Add IconButton Pressed...");
                })
          ],
        ),
        backgroundColor: Colors.lightBlueAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Body',
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) => debugPrint("Bottom Navigation Bar onTap: $index"),
// ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'item 1',
// title: Text('Bottom Nav Bar Item 1'),
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.mail), label: 'item 2'
// title: Text('Bottom Nav Bar Item 2'),
                )
          ],
        ),
        bottomSheet: Container(
            color: Colors.amberAccent,
            padding: const EdgeInsets.all(20.0),
            child: Row(children: <Widget>[
              IconButton(
                  icon: const Icon(Icons.update),
                  onPressed: () {
                    print("Bottom Sheet Icon Pressed");
                  }),
              const Text('Bottom Sheet Text')
            ])),
        drawer: Drawer(
            child: ListView(children: <Widget>[
          Row(children: <Widget>[
            IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  print("Drawer Item 1 Pressed");
                }),
            const Text('Drawer Item 1')
          ]),
          Row(children: <Widget>[
            IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  print("Drawer Item 2 Pressed");
                }),
            const Text('Drawer Item 2')
          ])
        ])),
/*
For swiping in from right-side.
endDrawer: Drawer(
child: ListView(children: <Widget>[
Row(children: <Widget>[
IconButton(
icon: Icon(Icons.add),
onPressed: () {
print("Drawer Item 1");
}),
Text('Drawer Item 1 Pressed')
]),
Row(children: <Widget>[
IconButton(
icon: Icon(Icons.add),
onPressed: () {
print("Drawer Item 2 Pressed”);
}),
Text('Drawer Item 2')
])
])),
*/
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("FloatingActionButton Pressed");
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add)),
        persistentFooterButtons: <Widget>[
          IconButton(
              icon: const Icon(Icons.update),
              onPressed: () {
                print("Persistant Footer Icon Pressed");
              }),
          const Text('Persistant Footer Text')
        ]);
  }
}
