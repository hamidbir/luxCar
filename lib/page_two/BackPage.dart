    import 'package:flutter/material.dart';

class BackPage extends CustomPainter {
          Color backPage;
  BackPage({this.backPage});


  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = backPage;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2.0;

    var path = Path();
    path.moveTo(size.width, 0);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.375, size.width * 0.25, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}