import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/customer/home/domain/entities/products_details_entity.dart';
import 'package:shoply/features/customer/home/presentation/widgets/product_details/product_action_buttons.dart';
import 'package:shoply/features/customer/home/presentation/widgets/product_details/product_deatils_custom_painter.dart';
import 'package:shoply/features/customer/home/presentation/widgets/product_details/product_images_slider.dart';

import 'add_to_cart_button.dart';

class ProductsDetailsBody extends StatefulWidget {
  const ProductsDetailsBody({super.key, required this.product});

  final ProductsDetailsEntity product;

  @override
  State<ProductsDetailsBody> createState() => _ProductsDetailsBodyState();
}

class _ProductsDetailsBodyState extends State<ProductsDetailsBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          size: Size(context.width, context.height),
          painter: DetailsCustomPainter(
            gradient: LinearGradient(
              colors: [
                context.colors.bluePinkLight,
                context.colors.bluePinkDark,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Positioned.fill(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ProductActionButtons(),
                verticalSpacing(15.h),
                ProductImagesSlider(product: widget.product),
                // * Product Name
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: TextApp(
                    text: widget.product.title??'',
                    style: MyFonts.styleBold700_14
                        .copyWith(color: context.colors.textColor),
                    maxLines: 1,
                  ),
                ),
                verticalSpacing(15.h),
                // * Product Description
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: TextApp(
                    text: '\$ ${widget.product.description}',
                    style: MyFonts.styleBold700_12
                        .copyWith(color: context.colors.textColor),
                  ),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ),
        Positioned(
            height: 80.h,
            bottom: 0,
            left: 10,
            child: AddToCartButton(
              price: widget.product.price.toString(),
            )),
      ],
    );
  }
}
