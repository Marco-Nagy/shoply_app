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
import 'package:shoply/core/utils/widgets/CustomDropdown.dart';
import 'package:shoply/core/utils/widgets/buttons/custom_button.dart';
import 'package:shoply/core/utils/widgets/snack_bar.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/admin/categories/data/model/get_all_categories/get_all_categories.dart';
import 'package:shoply/features/admin/categories/presentation/bloc/admin_categories_bloc.dart';
import 'package:shoply/features/admin/products/presentation/widget/productImage/upload_product_images_list.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';

class CreateProductBottomSheetWidget extends StatefulWidget {
  const CreateProductBottomSheetWidget({
    super.key,
  });

  @override
  State<CreateProductBottomSheetWidget> createState() =>
      _CreateProductBottomSheetWidgetState();
}

class _CreateProductBottomSheetWidgetState
    extends State<CreateProductBottomSheetWidget> {
  final formKye = GlobalKey<FormState>();
  final productNameController = TextEditingController();
  final priceController = TextEditingController();
  final descriptionController = TextEditingController();
  final categoryNameController = TextEditingController();
  String productTitleStatus = "Create";
  String productStatus = "Add";
  String categoryId = '';

  @override
  void initState() {
    super.initState();
    // _updateFormToEdit();
  }

  // void _updateFormToEdit() {
  // if (widget.categories.id!.isNotEmpty) {
  //     categoryNameController.text = widget.categories.name!;
  //     categoryTitleStatus= "Update";
  //      categoryStatus= "Edit";
  // }
  // }
  @override
  Widget build(BuildContext context) {
    final categoryCubits = context.read<AdminCategoriesBloc>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Form(
        key: formKye,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: TextApp(
                text: '$productTitleStatus Product',
                style: MyFonts.styleBold700_18
                    .copyWith(color: context.colors.textColor),
              ),
            ),
            verticalSpacing(4),
            TextApp(
              text: '$productStatus Photo',
              style: MyFonts.styleMedium500_16
                  .copyWith(color: context.colors.textColor),
            ),
            const UploadProductImagesList(),
            verticalSpacing(8),
            TextApp(
              text: '$productStatus Product Name',
              style: MyFonts.styleMedium500_16
                  .copyWith(color: context.colors.textColor),
            ),
            verticalSpacing(4),
            CustomFadeInLeft(
              duration: 400,
              child: AppTextFormField(
                controller: productNameController,
                hintText: 'Product Name',
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Please Selected Your Product Name';
                  }
                  return null;
                },
              ),
            ),
            verticalSpacing(8),
            TextApp(
              text: '$productStatus Price',
              style: MyFonts.styleMedium500_16
                  .copyWith(color: context.colors.textColor),
            ),
            verticalSpacing(4),
            CustomFadeInRight(
              duration: 400,
              child: AppTextFormField(
                controller: priceController,
                hintText: 'Price',
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Please Selected Your Product Name';
                  }
                  return null;
                },
              ),
            ),
            verticalSpacing(8),
            TextApp(
              text: '$productStatus Description',
              style: MyFonts.styleMedium500_16
                  .copyWith(color: context.colors.textColor),
            ),
            verticalSpacing(4),
            CustomFadeInLeft(
              duration: 400,
              child: AppTextFormField(
                controller: descriptionController,
                maxLines: 3,
                hintText: 'Description',
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Please Selected Your Product Name';
                  }
                  return null;
                },
              ),
            ),
            verticalSpacing(14),
            TextApp(
              text: 'Select Category for Product',
              style: MyFonts.styleMedium500_16
                  .copyWith(color: context.colors.textColor),
            ),
            verticalSpacing(5),
            BlocBuilder<AdminCategoriesBloc, AdminCategoriesState>(
              buildWhen: (previous, current) =>
                  current is GetAdminCategoriesListSuccess,
              builder: (context, state) {
                return state.maybeWhen(
                  getAdminCategoriesListSuccess: (categoriesList) {
                    return SizedBox(
                      width: double.infinity,
                      child: CustomDropdownMenu<Categories?>(
                        hintText: 'Select a Category',
                        controller: categoryNameController,
                        itemList: categoriesList,
                        itemBuilder: (item) {
                          categoryId = item?.id ?? '';
                          categoryNameController.text = item?.name ?? '';
                          return TextApp(
                            text: item!.name ?? '',
                            style: MyFonts.styleMedium500_16
                                .copyWith(color: context.colors.textColor),
                          );
                        },
                        filled: false,
                      ),
                    );
                  },
                  orElse: () => CustomDropdownMenu<String>(
                    itemList: const [''],
                    itemBuilder: (item) => TextApp(text: item),
                    filled: false,
                    hintText: '',
                    controller: TextEditingController(),
                  ),
                );
              },
            ),
            verticalSpacing(14),
            CustomFadeInUp(
              duration: 400,
              child: CustomButton(
                onPressed: () {
                  _uploadProductImagesList(context);

                  // if (widget.categories.id!.isNotEmpty){
                  //   _updateCategory(context);
                  // }else {
                  //   _createNewCategory(context);
                  // }
                },
                text: '$productTitleStatus Product',
                width: double.infinity,
                height: 60.h,
                backgroundColor: Colors.white,
                textColor: context.colors.bluePinkDark,
                threeRadius: 50,
                lastRadius: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _uploadProductImagesList(BuildContext context) async {
    final imagesList = context.read<FileCubit>().imagesList;
    if (imagesList.isEmpty) {
      aweSnackBar(
          title: 'Please Add at least one image',
          msg: context.translate(LangKeys.validPickImage),
          context: context,
          type: MessageTypeConst.help);
    }
    if (imagesList.isNotEmpty) {
      context.read<FileCubit>().uploadNetworkImageList().whenComplete(
            () => context.pop(),
          );
    }
  }

  Future<void> _updateCategory(BuildContext context) async {
    // final categoryImage = context.read<FileCubit>().getImageUrl;
    // if (categoryImage.isEmpty) {
    //   aweSnackBar(
    //     title: 'Empty Image',
    //       msg: context.translate(LangKeys.validPickImage),
    //       context: context,
    //       type: MessageTypeConst.help);
    // }
    // if (formKye.currentState!.validate() && categoryImage.isNotEmpty) {
    //   context.read<AdminCategoriesBloc>().add(UpdateCategoryEvent(
    //       body: UpdateCategoryRequest(widget.categories.id,
    //           categoryNameController.text.trim(), categoryImage)));
    // }
  }
}
