import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/styles/icons/app_animated_icons.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/app_animated_icon.dart';
import 'package:shoply/core/utils/widgets/buttons/custom_linear_button.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';

class AddToCartButton extends StatefulWidget {
  const AddToCartButton({super.key, required this.price});
final String price;

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton>    with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 80.h,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: context.width*.96,
      decoration: BoxDecoration(
        color: context.colors.navBarbg,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Colors.transparent,offset: Offset(2, 50),
            spreadRadius:2,
            blurRadius: 5,
          ),
          BoxShadow(
            color: Colors.black26,
            spreadRadius:2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text(
            '\$ ${widget.price}',
            style: MyFonts.styleSemiBold600_18.copyWith(color: context.colors.bluePinkLight),
          ),
          const SizedBox(width: 10),
      CustomFadeInLeft(
        duration: 400,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CustomLinearButton(
            width: 150  ,
            height: 55,
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextApp(text: 'Add To Cart',
                  style: MyFonts.styleBold700_12.copyWith(color: context.colors.white),
                ),
                AppAnimatedIcon(
                  animationController: _controller!,
                  iconAsset: AppAnimatedIcons.addToCart,
                iconColor: context.colors.mainColor,
                  backGroundColor: Colors.transparent,
                  animateTo: .7,
                  animationDuration: 2000,
                  onTap: () async {
                    Future.delayed(const Duration(milliseconds: 2000)).then(
                          (value) {

                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
        ],),
    );
  }
}
