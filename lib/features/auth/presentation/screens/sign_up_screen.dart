import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/features/auth/presentation/widget/custom_auth_painter.dart';
import 'package:shoply/features/auth/presentation/widget/signup/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
        child: SignUpBody(),
      ),
    );
  }
}
