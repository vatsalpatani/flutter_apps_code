import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

void main() => runApp(
      const MyApp(),
    );

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
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.music_note)),
                Tab(icon: Icon(Icons.music_video)),
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(icon: Icon(Icons.grade)),
                Tab(icon: Icon(Icons.email)),
              ],
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

class MyHomePage extends MyApp {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Hello World',
          style: TextStyle(
            color: Color.fromARGB(255, 228, 9, 9),
            letterSpacing: 0.5,
            fontSize: 40,
          ),
        ),
        FloatingActionButton(
          onPressed: null,
          focusColor: Colors.green,
          hoverColor: Colors.pink,
          splashColor: Colors.red,
          backgroundColor: Colors.black,
          foregroundColor: Colors.green,
          tooltip: 'Hello',
          child: Icon(
            Icons.add,
            size: 40,
            color: Colors.amber,
          ),
        ),
      ],
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
      // appBar: AppBar(
      //   title: const Text("Slider"),
      // ),

      body: ListView(
        children: <Widget>[
          const LinearProgressIndicator(
            backgroundColor: Colors.redAccent,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ExpansionTileCard(
              key: cardB,
              leading: const CircleAvatar(child: Text('A')),
              title: const Text(
                'Tap to Expand!',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                ),
              ),
              subtitle: const Text('hello.'),
              children: <Widget>[
                const Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Image.asset('assets/lock.jpg')),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

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

          

          //       //Slider Container properties
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
          // body: TabBarView(
          //   children: [
          //     Container(
          //       margin: EdgeInsets.all(6.0),
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

          // options: CarouselOptions(
          //   height: 180.0,
          //   enlargeCenterPage: true,
          //   autoPlay: true,
          //   aspectRatio: 16 / 9,
          //   autoPlayCurve: Curves.fastOutSlowIn,
          //   enableInfiniteScroll: true,
          //   autoPlayAnimationDuration: Duration(milliseconds: 800),
          //   viewportFraction: 0.8,
          // ),
          
// children: [
        //   Icon(Icons.music_note),
        //   Icon(Icons.music_video),
        //   Icon(Icons.camera_alt),
        //   Icon(Icons.grade),
        //   Icon(Icons.email),
        // ],