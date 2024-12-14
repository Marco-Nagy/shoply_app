import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/widgets/custom_linear_container_admin.dart';
import 'package:shoply/core/utils/widgets/images/custom_image.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.name, required this.image});
final String name;
final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: CustomLinearContainerAdmin(
        height: 65.h,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: TextApp(
                    text: name,
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                    style: MyFonts.styleBold700_14
                        .copyWith(color: context.colors.textColor)),
              ),
              Flexible(
                child: Container(
                  height: 55.h,
                  width: 55.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.w),
                  ),
                  child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 5.w,
                      child: CustomImage(imageUrl: image,)


                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
