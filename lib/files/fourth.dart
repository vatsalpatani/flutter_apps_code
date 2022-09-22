import 'package:flutter/material.dart';

class FourPage extends StatefulWidget {
  const FourPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  // ignore: library_private_types_in_public_api
  _FourPageState createState() => _FourPageState();
}

class _FourPageState extends State<FourPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.grey),
                child: RotationTransition(
                    turns: AlwaysStoppedAnimation(_animation.value),
                    child:
                        const Icon(Icons.airplanemode_active, size: 150.0)))),
        floatingActionButton: FloatingActionButton(
            onPressed: _spin,
            tooltip: 'Increment',
            child: const Icon(Icons.rotate_right)));
  }

  void _spin() {
    _controller.forward(from: 0.0);
  }
}
