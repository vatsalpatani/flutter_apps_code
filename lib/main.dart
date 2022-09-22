import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:skeleton_text/skeleton_text.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(
      const MyApp(),
    );

_launchURLBrowser() async {
  var url = Uri.parse("https://www.google.com/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLApp() async {
  var url = Uri.parse("https://www.google.com/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Hello',
              style: TextStyle(fontFamily: 'Pacifico'),
              selectionColor: Colors.black,
            ),
          ),
          body: HomePage(
              // title: '',
              ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SkeletonAnimation(
              child: Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 5.0),
                  child: SkeletonAnimation(
                    child: Container(
                      height: 15,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[300]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: SkeletonAnimation(
                      child: Container(
                        width: 60,
                        height: 13,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[300]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: _launchURLBrowser,
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(5.0)),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(color: Colors.black),
                ),
              ),
              // textColor: Colors.black,
              // padding: const EdgeInsets.all(5.0),
              child: const Text('Open in Browser'),
            ),
            Container(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: _launchURLApp,
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(5)),
                  textStyle: MaterialStateProperty.all(
                      const TextStyle(color: Colors.black))),
              // textColor: Colors.black,
              // padding: const EdgeInsets.all(5.0),
              child: const Text('Open in App'),
            ),
          ],
        ),
      ),
    );
  }
}

//class MyHomePage extends MyApp {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: const [
//         Text(
//           'Hello World',
//           style: TextStyle(
//             color: Color.fromARGB(255, 228, 9, 9),
//             letterSpacing: 0.5,
//             fontSize: 40,
//           ),
//         ),
//         FloatingActionButton(
//           onPressed: null,
//           focusColor: Colors.green,
//           hoverColor: Colors.pink,
//           splashColor: Colors.red,
//           backgroundColor: Colors.black,
//           foregroundColor: Colors.green,
//           tooltip: 'Hello',
//           child: Icon(
//             Icons.add,
//             size: 40,
//             color: Colors.amber,
//           ),
//         ),
//       ],
//     );
//   }
// }

//expand + loading bar code
// body: ListView(
//   children: <Widget>[
//     const LinearProgressIndicator(
//       backgroundColor: Colors.redAccent,
//     ),
//     Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 12.0),
//       child: ExpansionTileCard(
//         key: cardB,
//         leading: const CircleAvatar(child: Text('A')),
//         title: const Text(
//           'Tap to Expand!',
//           style: TextStyle(
//             fontFamily: 'Pacifico',
//           ),
//         ),
//         subtitle: const Text('hello.'),
//         children: <Widget>[
//           const Divider(
//             thickness: 1.0,
//             height: 1.0,
//           ),
//           Align(
//             alignment: Alignment.centerLeft,
//             child: Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 16.0,
//                   vertical: 8.0,
//                 ),
//                 child: Image.asset('assets/lock.jpg')),
//           ),
//         ],
//       ),
//     ),
//     const SizedBox(
//       height: 15,
//     ),
//   ],
// ),
// Center(
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: const [
//       CircularProgressIndicator(
//         backgroundColor: Colors.redAccent,
//         strokeWidth: 10,
//       ),
//     ],
//   ),
// ),

//carouselslider code
// body: ListView(
//   children: [
//     CarouselSlider(
//       items: [
//         //1st Image of Slider
//         Container(
//           margin: const EdgeInsets.all(6.0),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8.0),
//             image: const DecorationImage(
//               image: NetworkImage(
//                   "https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg"),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         //2nd Image of Slider
//         Container(
//           margin: const EdgeInsets.all(6.0),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8.0),
//             image: const DecorationImage(
//               image: NetworkImage(
//                   "https://images.pexels.com/photos/235621/pexels-photo-235621.jpeg"),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),

//         //3rd Image of Slider
//         Container(
//           margin: const EdgeInsets.all(6.0),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8.0),
//             image: const DecorationImage(
//               image: NetworkImage(
//                   "https://images.pexels.com/photos/1438761/pexels-photo-1438761.jpeg"),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),

//         //4th Image of Slider
//         Container(
//           margin: const EdgeInsets.all(6.0),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8.0),
//             image: const DecorationImage(
//               image: NetworkImage(
//                   "https://images.pexels.com/photos/302304/pexels-photo-302304.jpeg"),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),

//         //5th Image of Slider
//         Container(
//           margin: const EdgeInsets.all(6.0),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8.0),
//             image: const DecorationImage(
//               image: NetworkImage(
//                   "https://images.pexels.com/photos/735987/pexels-photo-735987.jpeg"),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       ],
////Slider Container properties
//       options: CarouselOptions(
//         height: 180.0,
//         enlargeCenterPage: true,
//         autoPlay: true,
//         aspectRatio: 16 / 9,
//         autoPlayCurve: Curves.fastOutSlowIn,
//         enableInfiniteScroll: true,
//         autoPlayAnimationDuration: const Duration(milliseconds: 800),
//         viewportFraction: 0.8,
//       ),
//     ),
//   ],
// ),

//tabbarview code write in appbar
// bottom: const TabBar(
//               tabs: [
//                 Tab(icon: Icon(Icons.music_note)),
//                 Tab(icon: Icon(Icons.music_video)),
//                 Tab(icon: Icon(Icons.camera_alt)),
//                 Tab(icon: Icon(Icons.grade)),
//                 Tab(icon: Icon(Icons.email)),
//               ],
//             ),
//tabbar view code
// TabBarView(
//   children: [
//     Container(
//       margin: const EdgeInsets.all(6.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8.0),
//         image: DecorationImage(
//           image: NetworkImage(
//               "https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg"),
//           fit: BoxFit.cover,
//         ),
//       ),
//     ),
//     Container(
//       margin: EdgeInsets.all(6.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8.0),
//         image: DecorationImage(
//           image: NetworkImage(
//               "https://images.pexels.com/photos/235621/pexels-photo-235621.jpeg"),
//           fit: BoxFit.cover,
//         ),
//       ),
//     ),
//     Container(
//       margin: EdgeInsets.all(6.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8.0),
//         image: DecorationImage(
//           image: NetworkImage(
//               "https://images.pexels.com/photos/1438761/pexels-photo-1438761.jpeg"),
//           fit: BoxFit.cover,
//         ),
//       ),
//     ),
//     Container(
//       margin: EdgeInsets.all(6.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8.0),
//         image: DecorationImage(
//           image: NetworkImage(
//               "https://images.pexels.com/photos/302304/pexels-photo-302304.jpeg"),
//           fit: BoxFit.cover,
//         ),
//       ),
//     ),
//     Container(
//       margin: EdgeInsets.all(6.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8.0),
//         image: DecorationImage(
//           image: NetworkImage(
//               "https://images.pexels.com/photos/735987/pexels-photo-735987.jpeg"),
//           fit: BoxFit.cover,
//         ),
//       ),
//     ),
//   ],
// ),
