// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_4/fifth.dart';
import 'package:flutter_application_4/nine.dart';
import 'package:flutter_application_4/nineteen.dart';
import 'package:flutter_application_4/second.dart';
import 'package:flutter_application_4/six.dart';
import 'package:flutter_application_4/third.dart';
import 'package:flutter_application_4/twensix.dart';
import 'package:flutter_application_4/twenty.dart';

import 'eight.dart';
import 'eighteen.dart';
import 'ele.dart';
import 'fifteen.dart';
import 'first.dart';
import 'fourteen.dart';
import 'fourth.dart';
import 'loginpage.dart';
import 'seven.dart';
import 'seventeen.dart';
import 'sixteen.dart';
import 'ten.dart';
import 'thirteen.dart';
import 'twe.dart';
import 'twenfive.dart';
import 'twenfour.dart';
import 'twenone.dart';
import 'twenthr.dart';
import 'twentwo.dart';

class MyHomeApp extends StatelessWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        // backgroundColor: Colors.black,
      ),
      body: Center(
        child: Image.asset(
          "assets/images/wel.webp",
          fit: BoxFit.cover,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                accountName: Text(
                  "Vatsal Patani",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("vatsalpatni@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.indigo,
                  child: Text(
                    "V",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('1'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const FirstPage(
                      title: 'one',
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('2'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const SecondPage(title: 'two')));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('3'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const ThirdPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('4'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const FourPage(
                          title: 'four',
                        )));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('5'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FifthPage(News(
                        DateTime(2022, 09, 1),
                        "Mass shooting in Atlanta",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet "
                            "tortor pretium, interdum magna sed, pulvinar ligula."))));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('6'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => SixPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('7'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => SevenPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('8'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => EightPage(
                          title: 'eight',
                        )));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('9'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => NinePage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('10'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => TenPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('11'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => ElevenPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('12'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => TwelvePage(
                          title: 'twelve',
                        )));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('13'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => ThreenPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('14'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FourteenPage(
                          title: 'fourteen',
                        )));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('15'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FifteenPage(
                          title: 'fifteen',
                        )));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('16'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => SixteenPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('17'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => SeventeenPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('18'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => EighteenPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('19'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => NinetennPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('20'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => TwentyPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('21'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => TwentonePage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('22'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => TwenttwoPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('23'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Twentthree()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('24'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Twentfour()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('25'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => TwentyfivePage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('26'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Twentsix(
                          title: 'twenty six',
                        )));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage()));
              },
            ),
          ],
        ),
      ), //Deawer
    );
  }
}
