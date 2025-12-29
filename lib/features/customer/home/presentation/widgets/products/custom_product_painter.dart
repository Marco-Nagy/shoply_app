import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';

class ProductCard extends StatelessWidget {
  final String category;
  final String title;
  final double price;
  final String imageUrl;
  final bool isFavorite;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;

  const ProductCard({
    super.key,
    required this.category,
    required this.title,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
    this.onTap,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipPath(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        clipper: ParallelogramClipper(),
        child: Container(
          width: 170,
          height: 220,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF2C3E66),
                Color(0xFF19223A),
              ],
            ),
            borderRadius: BorderRadius.circular(26),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Favorite icon
              Positioned(
                top: 12,
                right: 12,
                child: GestureDetector(
                  onTap: onFavoriteTap,
                  child: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),
              // Product Image
              Positioned(
                top: -30,
                left: 0,
                right: 0,
                child: Center(
                  child: Image.network(
                    imageUrl,
                    height: 80,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              // Product info
              Positioned(
                bottom: 20,
                left: 16,
                right: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '\$${price.toStringAsFixed(0)}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductCardShape extends CustomPainter {
  final BuildContext context;

  _ProductCardShape(this.context);

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    const radius = 28.0;

    final rrect = RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, size.width, size.height),
      const Radius.circular(radius),
    );

    path.addRRect(rrect);

    // ✅ Shadow for subtle depth
    canvas.drawShadow(path, Colors.black.withOpacity(0.25), 6.0, false);

    // ✅ Apply a very slight skew (like the image)
    final matrix4 = Matrix4.identity()..setEntry(0, 1, -0.02); // subtle skew
    path.transform(matrix4.storage);

    // ✅ Gradient fill
    final paint = Paint()
      ..shader = ui.Gradient.linear(
        Offset(size.width * 0.2, size.height * 0.2),
        Offset(size.width * 0.9, size.height),
        [
          context.colors.containerLinear1.withOpacity(0.95),
          context.colors.containerLinear2.withOpacity(0.95),
        ],
      )
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

// الرسام المخصص

class ProductCardShape extends CustomPainter {
  final BuildContext context;

  ProductCardShape({required this.context});

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    // مستطيل بزوايا ناعمة
    final radius = 24.0;

    final rrect = RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Radius.circular(radius),
    );

    path.addRRect(rrect);

    // تدرج لوني بسيط (بلا ميل زائد)
    final paint = Paint()
      ..shader = ui.Gradient.linear(
        Offset(0, 0),
        Offset(size.width, size.height),
        [
          context.colors.containerLinear1.withOpacity(0.85),
          context.colors.containerLinear2.withOpacity(0.85),
        ],
      )
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class ParallelogramClipper extends CustomClipper<Path> {
  final double radius;

  ParallelogramClipper({this.radius = 60.0});

  @override
// تشغيل درج التكوين عند تغيير حجم المستند
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(-5, -10.w);
    // أول نقطة فوق شمال مائلة
    path.lineTo(size.width, 50.h);
    // خط لفوق يمين
    path.lineTo(size.width, size.height + 10);
    // نزول لأسفل يمين
    path.lineTo(-70, size.height - 50);

    // خط لأسفل شمال
    path.close();
    // يقفل الشكل
    final rrect = RRect.fromRectAndRadius(
      Rect.fromLTRB(-50, 100, -50, 50),
      Radius.circular(radius),
    );

    path.addRRect(rrect);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
