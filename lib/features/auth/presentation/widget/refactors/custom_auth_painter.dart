import 'package:flutter/rendering.dart';

class CustomAuthPainter extends CustomPainter {
  CustomAuthPainter({required this.gradient, super.repaint});

  final LinearGradient gradient;

  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    final paintFill0 = Paint()
      ..shader = gradient.createShader(
        Rect.fromPoints(Offset.zero, Offset(0, size.height)),
      );

    final path0 = Path();
    path0
      ..moveTo(0, size.height * 0.4940000)
      ..lineTo(0, size.height * 1)
    ..lineTo(size.width , size.height );

    canvas.drawPath(path0, paintFill0);

    // Layer 1

    final paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
