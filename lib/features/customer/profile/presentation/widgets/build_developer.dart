import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoply/core/app/app_cubit/app_cubit.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/routes/app_routes.dart';
import 'package:shoply/core/styles/app_images.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/widgets/custom_dialogs.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';

class BuildDeveloper extends StatefulWidget {
  const BuildDeveloper({super.key});

  @override
  _BuildDeveloperState createState() => _BuildDeveloperState();
}

class _BuildDeveloperState extends State<BuildDeveloper> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        var cubit = context.read<AppCubit>();
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SvgPicture.asset(
                AppImages.buildDeveloper,
                color: context.colors.textColor,
              ),
              SizedBox(
                width: 8.w,
              ),
              TextApp(
                text: context.translate(LangKeys.buildDeveloper),
                style: MyFonts.styleMedium500_18
                    .copyWith(color: context.colors.textColor),
              ),
              const Spacer(),
              //* Navigate to developer Web Page
              InkWell(
                onTap: () {
                  cubit.openUrl(url: 'https://link.gettap.co/marconbishay78320');
                  // context.pushNamed(AppRoutes.webView,
                  //     arguments: 'https://link.gettap.co/marconbishay78320');
                },
                child: Row(
                  children: [
                    TextApp(
                      text: 'Marco Nagy',
                      style: MyFonts.styleMedium500_14
                          .copyWith(color: context.colors.textColor),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: context.colors.textColor,
                      size: 15,
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
