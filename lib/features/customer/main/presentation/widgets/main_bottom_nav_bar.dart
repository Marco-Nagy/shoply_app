import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/enums/nav_bar_enum.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/icons/app_animated_icons.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/features/customer/main/presentation/cubit/main_cubit.dart';
import 'package:shoply/features/customer/main/presentation/widgets/icon_tab_nav_bar.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({super.key});

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomFadeInUp(
      duration: 800,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: 103.h,
          width: context.width * .97,
          child: Stack(
            children: [

              Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    height: 60.h,
                    width: context.width,
                    decoration: BoxDecoration(
                      color: context.colors.navBarbg,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 1.5,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              BlocBuilder<MainCubit, MainState>(
                builder: (context, state) {
                  final cubit = context.read<MainCubit>();
                  return Container(
                    height: 100.h,
                    padding: const EdgeInsets.symmetric(horizontal: 20,),
                    // width: context.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconTabNavBar(
                            iconAsset: AppAnimatedIcons.cart,
                            onTap: () {
                       cubit.toggleNavBarEnum(NavBarEnum.cart);
                            },
                            isSelected: ValueNotifier(cubit.iconNavBar==NavBarEnum.cart)),
                        IconTabNavBar(
                            iconAsset: AppAnimatedIcons.home,
                            onTap: () {
                              cubit.toggleNavBarEnum(NavBarEnum.home);

                            },
                            isSelected: ValueNotifier(cubit.iconNavBar==NavBarEnum.home)),
                        IconTabNavBar(
                            iconAsset: AppAnimatedIcons.notifications,
                            onTap: () {
                              cubit.toggleNavBarEnum(NavBarEnum.notification);

                            },
                            isSelected: ValueNotifier(cubit.iconNavBar==NavBarEnum.notification)),
                        IconTabNavBar(
                            iconAsset: AppAnimatedIcons.favorite,
                            onTap: () {
                              cubit.toggleNavBarEnum(NavBarEnum.favorites);

                            },
                            isSelected: ValueNotifier(cubit.iconNavBar==NavBarEnum.favorites)),
                        IconTabNavBar(
                            iconAsset: AppAnimatedIcons.profile,
                            onTap: () {
                              cubit.toggleNavBarEnum(NavBarEnum.profile);

                            },
                            isSelected: ValueNotifier(cubit.iconNavBar==NavBarEnum.profile)),

                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
