import 'package:flutter/cupertino.dart';

class InvertedCircleClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) => Path()
      ..addOval(Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: size.width * 0.45
      ))..addRect(Rect.fromLTRB(0, 0, size.width, size.height))
      ..fillType = PathFillType.evenOdd;

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

}