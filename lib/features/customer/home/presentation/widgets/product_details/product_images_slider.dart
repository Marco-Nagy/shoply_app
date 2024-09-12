import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/string_exetension.dart';
import 'package:shoply/core/styles/app_images.dart';
import 'package:shoply/core/utils/widgets/custom_linear_container_admin.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/features/admin/products/data/model/get_product_details/product_details.dart';

class ProductImagesSlider extends StatefulWidget {
  const ProductImagesSlider({super.key, required this.product});
  final ProductDetails product;
  @override
  State<ProductImagesSlider> createState() => _ProductImagesSliderState();
}

class _ProductImagesSliderState extends State<ProductImagesSlider> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            height: 250.h,
            reverse: true,
            viewportFraction: 1.0,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
          itemCount: widget.product.images!.length,
          itemBuilder: (context, index, realIndex) {
            return CustomLinearContainerAdmin(
                width: context.width*.8,
                height: 200.h,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Hero(
                      tag: 'tag${widget.product.id}',
                      child: CachedNetworkImage(
                          fit: BoxFit.fill, imageUrl: widget.product.images![index].imageProductFormat(),
                        placeholder: (context, url) => Image.asset(
                          AppImages.appImage,
                          height: 100,
                          width: 100,
                        ),
                        // fit: BoxFit.fill,
                        errorWidget: (context, url, error) => Image.asset(
                          AppImages.appImage,
                          height: 100,
                          width: 100,
                        ),
                      ),

                    )));
          },
        ),
        verticalSpacing(10),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.product.images!
                .asMap()
                .entries
                .map(
                  (e) => Container(
                width: 12.0,
                height: 6.0,
                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    // shape: BoxShape.circle,
                    color: activeIndex == e.key
                        ? context.colors.bluePinkLight
                        : Colors.grey.shade50
                        .withOpacity(activeIndex == e.key ? 0.9 : 0.4)),
              ),
            )
                .toList(),
          ),
        )
      ],
    );
  }
}
