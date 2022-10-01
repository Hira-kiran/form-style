// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width, size.height);
    path0.quadraticBezierTo(size.width * 0.4782286, size.height * 0.5082667,
        size.width * 0.0008000, size.height * 0.9990333);
    path0.quadraticBezierTo(
        size.width * 0.0000857, size.height * 0.7640333, 0, 0);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

//*********************************** */
class SecondCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, size.height * 0.4214043);
    path0.quadraticBezierTo(
        size.width * -0.0100667, size.height * 0.7995957, 0, size.height);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width, size.height * 0.4216809);
    path0.quadraticBezierTo(size.width * 0.5112333, size.height * 0.0403830, 0,
        size.height * 0.4214043);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
