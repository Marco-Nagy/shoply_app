import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/string_exetension.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/features/customer/profile/presentation/bloc/profile_bloc.dart';

class UserRoleChange extends StatelessWidget {
  const UserRoleChange({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final cubit = context.read<ProfileBloc>();
        final isBuyer = cubit.role == UserRole.costumer.name;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: GestureDetector(
            onTap: () {
              cubit.add(const ProfileEvent.changeUserRole());
            },
            child: Container(
              width: context.width * 0.8,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(
                  width: 1.5,
                  color: context.colors.bluePinkDark,
                ),
                color: context.colors.bluePinkLight.withOpacity(0.3),
              ),
              child: Stack(
                children: [
                  // Active selection background
                  AnimatedAlign(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                    alignment: isBuyer
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    child: Container(
                      width: context.width * 0.4,
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: context.colors.bluePinkDark,
                      ),
                    ),
                  ),

                  // Buyer and Seller labels
                  Row(
                    children: [
                      // Buyer Section
                      Expanded(
                        child: Center(
                          child: Row(
                            spacing: 15,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.person_outline,
                                color: isBuyer
                                    ? context.colors.white
                                    : context.colors.textFormBorder,
                                size: 24.sp,
                              ),
                              Text(
                                context.translate(LangKeys.buyer),
                                style: TextStyle(
                                  color: isBuyer
                                      ? context.colors.white
                                      : context.colors.textFormBorder,
                                  fontSize: 20.sp,
                                  fontWeight: isBuyer
                                      ? FontWeight.w800
                                      : FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Seller Section
                      Expanded(
                        child: Center(
                          child: Row(
                            spacing: 15,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.storefront_outlined,
                                color: !isBuyer
                                    ? context.colors.white
                                    : context.colors.textFormBorder,
                                size: 24.sp,
                              ),
                              Text(
                                context.translate(LangKeys.seller),
                                style: TextStyle(
                                  color: !isBuyer
                                      ? context.colors.white
                                      : context.colors.textFormBorder,
                                  fontSize: 20.sp,
                                  fontWeight: !isBuyer
                                      ? FontWeight.w800
                                      : FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
