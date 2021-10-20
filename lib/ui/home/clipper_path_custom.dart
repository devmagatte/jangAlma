import 'dart:math';
import 'package:flutter/material.dart';

class ClipperPathCustom extends CustomClipper<Path> {
  final radius;

  ClipperPathCustom(this.radius);

  @override
  Path getClip(Size size) {
    const int SIDES_OF_HEXAGON = 6;
    const Offset center = Offset(50, 50);

    final path = Path();

    var angle = (pi * 2) / SIDES_OF_HEXAGON;

    Offset firstPoint = Offset(radius * cos(0.0), radius * sin(0.0));

    path.moveTo(firstPoint.dx + center.dx, firstPoint.dy + center.dy);

    for (int i = 1; i <= SIDES_OF_HEXAGON; i++) {
      double x = radius * cos(angle * i) + center.dx;
      double y = radius * sin(angle * i) + center.dy;
      path.lineTo(x, y);
    }

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
