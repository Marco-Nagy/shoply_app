import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/features/customer/home/presentation/widgets/products/custom_product_painter.dart';

class CustomContainerLinearCustomer extends StatelessWidget {
  const CustomContainerLinearCustomer({
    required this.height,
    required this.width,
    required this.child,
    super.key,
  });

  final double height;
  final double width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ParallelogramClipper(),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              context.colors.containerLinear1.withValues(alpha: 0.8),
              context.colors.containerLinear2.withValues(alpha: 0.8),
            ],
            begin: const Alignment(0.36, 0.27),
            end: const Alignment(0.58, 0.85),
          ),
          boxShadow: [
            BoxShadow(
              color: context.colors.containerShadow1.withValues(alpha: 0.3),
              offset: const Offset(0, 4),
              blurRadius: 8,
            ),
            BoxShadow(
              color: context.colors.containerShadow2.withValues(alpha: 0.3),
              offset: const Offset(0, 4),
              blurRadius: 2,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
