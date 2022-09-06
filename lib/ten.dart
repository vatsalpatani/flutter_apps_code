import 'dart:math';
import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  final _random = Random();
  final List<Color> _colors = [];
  CirclePainter() {
    for (int i = 0; i < 100; i++) {
      _colors.add(Colors.green
          .withRed(next(0, 255))
          .withGreen(next(0, 255))
          .withBlue(next(0, 255)));
    }
  }
  int next(int min, int max) => min + _random.nextInt(max - min);
  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < 100; i++) {
      var radius = (i * 10).toDouble();
      canvas.drawCircle(
          const Offset(1000.0, 1000.0),
          radius,
          Paint()
            ..color = _colors[i]
            ..strokeCap = StrokeCap.round
            ..style = PaintingStyle.stroke
            ..strokeWidth = 15.0);
    }
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return false;
  }
}

// ignore: must_be_immutable
class TenPage extends StatelessWidget {
  CirclePainter circlePainter = CirclePainter();
  TenPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scroll"),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          CustomPaint(
            size: const Size(2000.0, 2000.0),
            foregroundPainter: circlePainter,
          ),
        ],
      ),
    );
  }
}
