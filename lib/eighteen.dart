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

class Tab1 extends StatelessWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network("https://cdn2.thecatapi.com/images/MTY1NDA3OA.jpg");
  }
}

class Tab2 extends StatelessWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network("https://cdn2.thecatapi.com/images/68j.jpg");
  }
}

class Tab3 extends StatelessWidget {
  const Tab3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network("https://cdn2.thecatapi.com/images/ece.jpg");
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);
  @override
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Cat Tabs"),
            ),
            body: const TabBarView(
              children: <Widget>[Tab1(), Tab2(), Tab3()],
            ),
            bottomNavigationBar:
                const TabBar(labelColor: Colors.black, tabs: <Widget>[
              Tab(text: 'Cat #1', icon: Icon(Icons.keyboard_arrow_left)),
              Tab(text: 'Cat #2', icon: Icon(Icons.keyboard_arrow_up)),
              Tab(text: 'Cat #3', icon: Icon(Icons.keyboard_arrow_right))
            ])));
  }
}
 //@override
// Widget build(BuildContext context) {
// return DefaultTabController(
// length: 3,
// child: Scaffold(
// appBar: AppBar(
// title: const Text("Cat Tabs"),
// bottom: const TabBar(
// tabs: <Widget>[
// Tab(text: 'Cat #1', icon: Icon(Icons.keyboard_arrow_left)),
// Tab(text: 'Cat #2', icon: Icon(Icons.keyboard_arrow_up)),
// Tab(text: 'Cat #3', icon: Icon(Icons.keyboard_arrow_right))
// ],
// ),
// ),
// body: TabBarView(
// children: <Widget>[const Tab1(), Tab2(), Tab3()],
// )));
// }
// }
