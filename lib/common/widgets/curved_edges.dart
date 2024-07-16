import 'package:flutter/material.dart';

class CustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final initialCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);

    path.quadraticBezierTo(
      initialCurve.dx,
      initialCurve.dy,
      lastCurve.dx,
      lastCurve.dy,
    );

    final secondInitialCurve = Offset(0, size.height - 20);
    final secondLastCurve = Offset(size.width - 30, size.height - 20);

    path.quadraticBezierTo(
      secondInitialCurve.dx,
      secondInitialCurve.dy,
      secondLastCurve.dx,
      secondLastCurve.dy,
    );
    final thirdInitialCurve = Offset(size.width, size.height - 20);
    final thirdLastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(
      thirdInitialCurve.dx,
      thirdInitialCurve.dy,
      thirdLastCurve.dx,
      thirdLastCurve.dy,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
