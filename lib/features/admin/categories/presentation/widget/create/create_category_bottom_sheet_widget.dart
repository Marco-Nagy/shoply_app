import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/Services/local_translator.dart';
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
import 'package:shoply/features/admin/categories/domain/entities/multilingual_category_entity.dart';
import 'package:shoply/features/admin/categories/presentation/bloc/admin_categories_bloc.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';

import 'upload_category_image.dart';

class CreateCategoryBottomSheetWidget extends StatefulWidget {
  const CreateCategoryBottomSheetWidget({super.key, this.category});
  final MultilingualCategoryEntity? category;

  @override
  State<CreateCategoryBottomSheetWidget> createState() =>
      _CreateCategoryBottomSheetWidgetState();
}

class _CreateCategoryBottomSheetWidgetState
    extends State<CreateCategoryBottomSheetWidget> {
  final formKye = GlobalKey<FormState>();
  final categoryNameController = TextEditingController();
  String categoryTitleStatus = "Create";
  String categoryStatus = "Add";
  bool _isTranslating = false;

  @override
  void initState() {
    super.initState();
    _updateFormToEdit();
  }

  void _updateFormToEdit() {
    if (widget.category != null) {
      categoryNameController.text =
          LocalTranslator.translate(widget.category!.name);
      categoryTitleStatus = "Update";
      categoryStatus = "Edit";
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
                text: context.translate(categoryTitleStatus == "Create"
                    ? LangKeys.createCategory
                    : LangKeys.updateCategory),
                style: MyFonts.styleBold700_18
                    .copyWith(color: context.colors.textColor),
              ),
            ),
            verticalSpacing(5),
            TextApp(
              text: context.translate(categoryStatus == "Add"
                  ? LangKeys.addPhoto
                  : LangKeys.editPhoto),
              style: MyFonts.styleMedium500_16
                  .copyWith(color: context.colors.textColor),
            ),
            UploadCategoryImage(
                uploadCategoryImage:
                    widget.category != null ? widget.category!.image : ''),
            verticalSpacing(8),
            TextApp(
              text: context.translate(categoryStatus == "Add"
                  ? LangKeys.addCategoryName
                  : LangKeys.editCategoryName),
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
                    return context.translate(LangKeys.validCategoryName);
                  }
                  return null;
                },
              ),
            ),
            verticalSpacing(14),
            BlocConsumer<AdminCategoriesBloc, AdminCategoriesState>(
                listener: (BuildContext context, AdminCategoriesState state) {
              state.maybeWhen(
                addFirebaseCategorySuccess: () {
                  context.pop();
                  aweSnackBar(
                      title: context.translate(LangKeys.successfullyAdded),
                      msg:
                          '${categoryNameController.text.trim()} ${context.translate(LangKeys.categoryCreatedSuccessfully)}',
                      context: context,
                      type: MessageTypeConst.success);
                },
                updateFirebaseCategorySuccess: () {
                  context.pop();
                  aweSnackBar(
                      title: context.translate(LangKeys.successfullyUpdated),
                      msg:
                          '${categoryNameController.text.trim()} ${context.translate(LangKeys.categoryUpdatedSuccessfully)}',
                      context: context,
                      type: MessageTypeConst.success);
                },
                addFirebaseCategoryFailure: (errorMessage) {
                  aweSnackBar(
                      title: context.translate(LangKeys.failedToAddCategory),
                      msg: errorMessage,
                      context: context,
                      type: MessageTypeConst.failure);
                },
                updateFirebaseCategoryFailure: (errorMessage) {
                  aweSnackBar(
                      title: context.translate(LangKeys.failedToUpdateCategory),
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
                      onPressed: !_isTranslating
                          ? () {
                              if (widget.category != null) {
                                _updateCategory(context).whenComplete(
                                  () {
                                    context.read<AdminCategoriesBloc>().add(
                                        const AdminCategoriesEvent
                                            .fetchFirebaseCategories());
                                  },
                                );
                              } else {
                                _createNewCategory(context).whenComplete(
                                  () {
                                    context.read<AdminCategoriesBloc>().add(
                                        const AdminCategoriesEvent
                                            .fetchFirebaseCategories());
                                  },
                                );
                              }
                            }
                          : () {},
                      text: _isTranslating
                          ? context.translate(LangKeys.translating)
                          : context.translate(categoryTitleStatus == "Create"
                              ? LangKeys.createCategory
                              : LangKeys.updateCategory),
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
          title: context.translate(LangKeys.emptyImage),
          msg: context.translate(LangKeys.validPickImage),
          context: context,
          type: MessageTypeConst.help);
      return;
    }

    if (!formKye.currentState!.validate()) {
      return;
    }

    setState(() => _isTranslating = true);

    try {
      final translations = await LocalTranslator.translateFromCurrentLanguage(
        categoryNameController.text.trim(),
      );

      final newCategory = MultilingualCategoryEntity(
        id: '',
        name: translations,
        image: categoryImage,
      );

      context
          .read<AdminCategoriesBloc>()
          .add(CreateFirebaseCategoryEvent(category: newCategory));
    } catch (e) {
      aweSnackBar(
        title: context.translate(LangKeys.translationError),
        msg:
            '${context.translate(LangKeys.translationFailed)}: ${e.toString()}',
        context: context,
        type: MessageTypeConst.failure,
      );
    } finally {
      setState(() => _isTranslating = false);
    }
  }

  Future<void> _updateCategory(BuildContext context) async {
    final categoryImage = context.read<FileCubit>().getImageUrl;
    if (categoryImage.isEmpty) {
      aweSnackBar(
          title: context.translate(LangKeys.emptyImage),
          msg: context.translate(LangKeys.validPickImage),
          context: context,
          type: MessageTypeConst.help);
      return;
    }

    if (!formKye.currentState!.validate()) {
      return;
    }

    setState(() => _isTranslating = true);

    try {
      final translations = await LocalTranslator.translateFromCurrentLanguage(
        categoryNameController.text.trim(),
      );

      final updatedCategory = MultilingualCategoryEntity(
        id: widget.category!.id,
        name: translations,
        image: categoryImage,
      );

      context
          .read<AdminCategoriesBloc>()
          .add(UpdateFirebaseCategoryEvent(category: updatedCategory));
    } catch (e) {
      aweSnackBar(
        title: context.translate(LangKeys.translationError),
        msg:
            '${context.translate(LangKeys.translationFailed)}: ${e.toString()}',
        context: context,
        type: MessageTypeConst.failure,
      );
    } finally {
      setState(() => _isTranslating = false);
    }
  }
}
