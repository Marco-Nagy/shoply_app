import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/message_type_const.dart';
import 'package:shoply/core/utils/screens/app_text_form_field.dart';
import 'package:shoply/core/utils/widgets/buttons/custom_button.dart';
import 'package:shoply/core/utils/widgets/snack_bar.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/admin/categories/data/model/create/create_category_request.dart';
import 'package:shoply/features/admin/categories/data/model/get_all_categories/get_all_categories.dart';
import 'package:shoply/features/admin/categories/data/model/update/update_category_request.dart';
import 'package:shoply/features/admin/categories/presentation/bloc/admin_categories_bloc.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';

import 'upload_category_image.dart';

class CreateCategoryBottomSheetWidget extends StatefulWidget {
  const CreateCategoryBottomSheetWidget( {super.key,   this.categories});
final Categories? categories;

  @override
  State<CreateCategoryBottomSheetWidget> createState() =>
      _CreateCategoryBottomSheetWidgetState();
}

class _CreateCategoryBottomSheetWidgetState
    extends State<CreateCategoryBottomSheetWidget> {
  final formKye = GlobalKey<FormState>();
final categoryNameController = TextEditingController();
   String categoryTitleStatus= "Create";
   String categoryStatus= "Add";
@override
  void initState() {
    super.initState();
    _updateFormToEdit();
  }
  void _updateFormToEdit() {
  if (widget.categories !=null) {
      categoryNameController.text = widget.categories!.name!;
      categoryTitleStatus= "Update";
       categoryStatus= "Edit";
  }
  }
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
                text: '$categoryTitleStatus Category',
                style: MyFonts.styleBold700_18
                    .copyWith(color: context.colors.textColor),
              ),
            ),
            verticalSpacing(5),
            TextApp(
              text: '$categoryStatus Photo',
              style: MyFonts.styleMedium500_16
                  .copyWith(color: context.colors.textColor),
            ),
             UploadCategoryImage(uploadCategoryImage:widget.categories!=null?widget.categories!.image!:''),
            verticalSpacing(8),

            TextApp(
              text: '$categoryStatus Category Name',
              style: MyFonts.styleMedium500_16
                  .copyWith(color: context.colors.textColor),
            ),
            verticalSpacing(5),

            CustomFadeInRight(
              duration: 400,
              child: AppTextFormField(
                controller: categoryNameController,
                hintText: context.translate(LangKeys.categoryName),
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Please Selected Your Category Name';
                  }
                  return null;
                },
              ),
            ),
            verticalSpacing(14),
            BlocConsumer<AdminCategoriesBloc, AdminCategoriesState>(
                listener: (BuildContext context, AdminCategoriesState state) {
              state.maybeWhen(
                addNewCategorySuccess: () {
                  context.pop();
                  aweSnackBar(
                    title: 'Successfully Added',
                      msg:
                          '${categoryNameController.text.trim()} Created Successfully',
                      context: context,
                      type: MessageTypeConst.success);},
                updateCategorySuccess: () {
                  context.pop();
                  aweSnackBar(
                    title: 'Successfully Updated',
                      msg:
                          '${categoryNameController.text.trim()} Updated Successfully',
                      context: context,
                      type: MessageTypeConst.success);},
                addNewCategoryFailure: (errorMessage) {
                  aweSnackBar(
                    title:
                      'Failed to add new category',
                      msg: errorMessage,
                      context: context,
                      type: MessageTypeConst.failure);
                },
                updateCategoryFailure: (errorMessage) {
                  aweSnackBar(
                    title: 'Failed to update category',
                      msg: errorMessage,
                      context: context,
                      type: MessageTypeConst.failure);
                },
                orElse: () {},
              );
            }, builder: (context, state) {
              return state.maybeWhen(
                adminCategoriesLoading: () {
                  return CustomFadeInUp(
                    duration: 400,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: context.colors.bluePinkLight,
                      ),
                    ),
                  );
                },
                orElse: () {
                  return CustomFadeInUp(
                    duration: 400,
                    child: CustomButton(
                      onPressed: () {
                        if (widget.categories != null){
                          _updateCategory(context).whenComplete(() {
                            context.read<AdminCategoriesBloc>().add(const AdminCategoriesEvent.fetchAdminCategories());
                          },);
                        }else {
                          _createNewCategory(context).whenComplete(() {

                            context.read<AdminCategoriesBloc>().add(const AdminCategoriesEvent.fetchAdminCategories());

                          },);
                        }
                      },
                      text: '$categoryTitleStatus Category',
                      width: double.infinity,
                      height: 60.h,
                      backgroundColor: Colors.white,
                      textColor: context.colors.bluePinkDark,
                      threeRadius: 50,
                      lastRadius: 50,
                    ),
                  );
                },
              );
            })
          ],
        ),
      ),
    );
  }

  Future<void> _createNewCategory(BuildContext context) async {
    final categoryImage = context.read<FileCubit>().getImageUrl;
    if (categoryImage.isEmpty) {
      aweSnackBar(
        title: 'Empty Image',
          msg: context.translate(LangKeys.validPickImage),
          context: context,
          type: MessageTypeConst.help);
    }
    if (formKye.currentState!.validate() && categoryImage.isNotEmpty) {
      context.read<AdminCategoriesBloc>().add(CreateNewCategoryEvent(
          body: CreateCategoryRequest(
              categoryNameController.text.trim(), categoryImage)));
    }
  }
  Future<void> _updateCategory(BuildContext context) async {
    final categoryImage = context.read<FileCubit>().getImageUrl;
    if (categoryImage.isEmpty) {
      aweSnackBar(
        title: 'Empty Image',
          msg: context.translate(LangKeys.validPickImage),
          context: context,
          type: MessageTypeConst.help);
    }
    if (formKye.currentState!.validate() && categoryImage.isNotEmpty) {
      context.read<AdminCategoriesBloc>().add(UpdateCategoryEvent(body: UpdateCategoryRequest(widget.categories!.id, categoryNameController.text.trim(), categoryImage)));
    }
  }
}
