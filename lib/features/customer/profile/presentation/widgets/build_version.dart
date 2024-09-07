import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/styles/app_images.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/app_info.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';

class BuildVersion extends StatelessWidget {
  const BuildVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SvgPicture.asset(
            AppImages.buildVersion,
            color: context.colors.textColor,
          ),
          SizedBox(
            width: 8.w,
          ),
          TextApp(
            text: context.translate(LangKeys.buildVersion),
            style: MyFonts.styleMedium500_18
                .copyWith(color: context.colors.textColor),
          ),
          const Spacer(),
          //* Build Version
          FutureBuilder(
            future: AppInfo.getAppVersion(context),
            builder: (context, snapshot) {
             return snapshot.hasData? TextApp(
               text: snapshot.data.toString(),
               style: MyFonts.styleMedium500_14
                   .copyWith(color: context.colors.textColor),
             ):const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
