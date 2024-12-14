import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import '../../styles/app_images.dart';
import '../widgets/text_app.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key, this.title = 'No Data'});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Opacity(
        opacity: 0.6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.emptyScreen),
            TextApp(
              text: title!,
              style: MyFonts.styleMedium500_16,
            ),
          ],
        ),
      ),
    );
  }
}
