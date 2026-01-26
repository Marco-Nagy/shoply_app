import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';

class SocialSignInButtons extends StatelessWidget {
  final bool isSignUp;
  final VoidCallback? onGooglePressed;
  final VoidCallback? onFacebookPressed;
  final VoidCallback? onApplePressed;

  const SocialSignInButtons({
    super.key,
    required this.isSignUp,
    this.onGooglePressed,
    this.onFacebookPressed,
    this.onApplePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Divider with text
        Row(
          children: [
            Expanded(
              child: Divider(
                color: context.colors.textColor.withOpacity(0.3),
                thickness: 1,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                context.translate(
                  isSignUp ? LangKeys.orSignUpWith : LangKeys.orSignInWith,
                ),
                style: TextStyle(
                  color: context.colors.textColor.withValues(alpha: 0.6),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              child: Divider(
                color: context.colors.textColor.withValues(alpha: 0.3),
                thickness: 1,
              ),
            ),
          ],
        ),
        verticalSpacing(20),
        // Social buttons row
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Google button
            _SocialButton(
              icon: FontAwesomeIcons.google,
              backgroundColor: Colors.white,
              iconColor: const Color(0xFF4285F4),
              onPressed: onGooglePressed,
            ),
            horizontalSpacing(16),
            // Facebook button
            _SocialButton(
              icon: FontAwesomeIcons.facebookF,
              backgroundColor: const Color(0xFF1877F2),
              iconColor: Colors.white,
              onPressed: onFacebookPressed,
            ),
            horizontalSpacing(16),
            // Apple button
            _SocialButton(
              icon: FontAwesomeIcons.apple,
              backgroundColor: Colors.black,
              iconColor: Colors.white,
              onPressed: onApplePressed,
            ),
          ],
        ),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final VoidCallback? onPressed;

  const _SocialButton({
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        width: 100.w,
        height: 56.h,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12.r),
          border: backgroundColor == Colors.white
              ? Border.all(
                  color: context.colors.textColor.withValues(alpha: 0.1),
                  width: 1,
                )
              : null,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: FaIcon(
            icon,
            color: iconColor,
            size: 24.sp,
          ),
        ),
      ),
    );
  }
}
