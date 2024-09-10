import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/string_exetension.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/features/auth/data/models/role/user_role_response.dart';
import 'package:skeletonizer/skeletonizer.dart';

class UserProfileInfo extends StatelessWidget {
  const UserProfileInfo({super.key,  required this.userInfo});
final UserRoleResponse userInfo;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: userInfo.id==0,
      enableSwitchAnimation: true,
      effect: ShimmerEffect.raw(colors: [context.colors.containerShadow1, context.colors.textFormBorder, context.colors.navBarSelectedTab]),
      child: Column(
        children: [
           ClipRRect(
        borderRadius:   BorderRadius.circular(45),
            child: CachedNetworkImage(imageUrl: userInfo.avatar??'',
            height: 80.h,
            width: 80.w,
            fit: BoxFit.fill,
          ),
          ),
          const SizedBox(height: 16),
          Text(userInfo.name??''.toLowerCase().toCapitalized(),style: MyFonts.styleBold700_18
              .copyWith(color: context.colors.textColor),),
          const SizedBox(height: 8),
          Text(userInfo.email??'',style: MyFonts.styleSemiBold600_14
              .copyWith(color: context.colors.textColor),),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
