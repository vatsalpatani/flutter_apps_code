import 'package:flutter/material.dart';

import 'files/loginpage.dart';
import 'homepage.dart';  
void main() => runApp(const MyFirstPage());

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/homepage": (context) => const MyHomeApp(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
