// import 'package:flutter/material.dart';

// class BgPainterColor extends CustomPainter {
//   BgPainterColor()
//       : bluePaint = Paint()
//           ..color = Colors.lightBlue
//           ..style = PaintingStyle.fill,
//         greyPaint = Paint()
//           ..color = Colors.indigo[900]
//           ..style = PaintingStyle.fill,
//         orangePaint = Paint()
//           ..color = Colors.orange
//           ..style = PaintingStyle.fill;

//   final Paint bluePaint;
//   final Paint greyPaint;
//   final Paint orangePaint;
//   @override
//   void paint(Canvas canvas, Size size) {
//     // TODO: implement paint
//     // size(360.0, 640.0)
//     canvas.drawPaint(Paint()..color = Colors.red);
//   }

//   void paintBlue(Canvas canvas, Size size) {
//     final path = Path();
//     path.moveTo(size.width, size.height / 2);
//     path.lineTo(size.width, 0);
//     path.lineTo(0, 0);
//     path.close();

//     canvas.drawPath(path, bluePaint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }

//   void _addPointsToPath(Path path, List<Point> points) {
//     if (points.length < 3) {
//       throw UnsupportedError("Need three or more points to create a path");
//     }
//   }
// }
