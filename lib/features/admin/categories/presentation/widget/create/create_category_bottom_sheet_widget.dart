import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/screens/app_text_form_field.dart';
import 'package:shoply/core/utils/widgets/buttons/custom_button.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'upload_category_image.dart';

class CreateCategoryBottomSheetWidget extends StatefulWidget {
  const CreateCategoryBottomSheetWidget({super.key});

  @override
  State<CreateCategoryBottomSheetWidget> createState() =>
      _CreateCategoryBottomSheetWidgetState();
}

class _CreateCategoryBottomSheetWidgetState
    extends State<CreateCategoryBottomSheetWidget> {
  final formKye = GlobalKey<FormState>();
final categoryNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Form(
        key: formKye,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: TextApp(
                text: 'Create Category',
                style: MyFonts.styleBold700_18
                    .copyWith(color: context.colors.textColor),
              ),
            ),
            verticalSpacing(5),
            TextApp(
              text: 'Add Photo',
              style: MyFonts.styleMedium500_16
                  .copyWith(color: context.colors.textColor),
            ),
            const UploadCategoryImage(),
            verticalSpacing(8),

            TextApp(
              text: 'Add Category Name',
              style: MyFonts.styleMedium500_16
                  .copyWith(color: context.colors.textColor),
            ),
            verticalSpacing(5),

            CustomFadeInRight(
              duration: 400,
              child: AppTextFormField(
                controller: categoryNameController,
                hintText: context.translate(LangKeys.categoryName),

              ),
            ),
            verticalSpacing(14),
            CustomFadeInUp(
              duration: 400,
              child: CustomButton(onPressed: () {

              }, text: 'Create New Category', width: double.infinity, height: 60.h,backgroundColor: Colors.white,textColor: context.colors.bluePinkDark,threeRadius: 50,lastRadius: 50,),
            )
          ],
        ),
      ),
    );
  }
}
