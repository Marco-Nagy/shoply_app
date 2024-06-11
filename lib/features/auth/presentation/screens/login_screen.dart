import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/features/auth/presentation/widget/login_body.dart';
import 'package:shoply/features/auth/presentation/widget/refactors/custom_auth_painter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomFadeInRight(
        duration: 450,
        child: CustomPaint(
          size: Size(MediaQuery.sizeOf(context).width, 150.h),
          painter: CustomAuthPainter(
            gradient: LinearGradient(
              colors: [
                context.colors.bluePinkDark,
                context.colors.bluePinkLight,
                context.colors.bluePinkLight,
                context.colors.bluePinkDark,
              ],
              begin: const Alignment(0.46, -.89),
              end: const Alignment(-0.46, .89),
            ),
          ),
        ),
      ),
      body: const SafeArea(
        bottom: false,
        child: LoginBody(),
      ),
    );
  }
}
