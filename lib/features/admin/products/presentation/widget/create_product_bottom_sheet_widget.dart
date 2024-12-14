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
import 'package:shoply/features/admin/products/domain/entities/create_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/update_product_entity.dart';
import 'package:shoply/features/admin/products/presentation/bloc/admin_product_bloc.dart';
import 'package:shoply/features/admin/products/presentation/widget/productImage/upload_product_images_list.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';


class CreateProductBottomSheetWidget extends StatefulWidget {
  const CreateProductBottomSheetWidget({
    super.key,
    this.product,
  });

  final GetProductEntity? product;
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
    _updateFormToEdit();
  }

  void _updateFormToEdit() {
    if (widget.product != null) {
      setState(() {
        categoryId = widget.product!.category.id;
        categoryNameController.text = widget.product!.category.name;
        productNameController.text = widget.product!.title;
        priceController.text = widget.product!.price.toString();
        descriptionController.text = widget.product!.description;
        productTitleStatus = "Update";
        productStatus = "Edit";
      });
    }
    debugPrint('categoryNameController : ${categoryNameController.text}');
  }

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
            UploadProductImagesList(
              uploadProductImagesLIst:widget.product!=null? widget.product!.images:[],
            ),
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
                    return 'Please Selected Your Product Price';
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
                    return 'Please Selected Your Product Description';
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
            BlocConsumer<AdminCategoriesBloc, AdminCategoriesState>(
              buildWhen: (previous, current) =>
                  current is GetAdminCategoriesListSuccess,
              builder: (context, state) {
                return state.maybeWhen(
                  getAdminCategoriesListSuccess: (categoriesList) {
                    if(widget.product!= null){
                      categoryId = widget.product!.category.id;
                      categoryNameController.text = widget.product!.category.name;
                    }
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
              }, listener: (BuildContext context, AdminCategoriesState state) {
                state.whenOrNull(getAdminCategoriesListSuccess: (categoriesList) {
                  _updateFormToEdit();
                },);
            },
            ),
            verticalSpacing(14),
            CustomFadeInUp(
              duration: 400,
              child: BlocConsumer<AdminProductBloc, AdminProductState>(
  listener: (context, state) {
    state.maybeWhen(
      createNewProductSuccess: (body) {
        context.read<AdminProductBloc>().add(const AdminProductEvent.getAdminProductList());

          context.pop();
          aweSnackBar(
              title: 'Successfully Added',
              msg:
              '${productNameController.text.trim()} Created Successfully',
              context: context,
              type: MessageTypeConst.success);

      },
      updateProductSuccess: (body) {
        context.read<AdminProductBloc>().add(const AdminProductEvent.getAdminProductList());

        context.pop();
        aweSnackBar(
            title: 'Successfully Updated',
            msg:
            '${productNameController.text.trim()} Updated Successfully',
            context: context,
            type: MessageTypeConst.success);},
      createNewProductFailure: (errorMessage) {
        aweSnackBar(
            title:
            'Failed to add new Product',
            msg: errorMessage.toString(),
            context: context,
            type: MessageTypeConst.failure);
      },
      updateProductFailure: (errorMessage) {
        aweSnackBar(
            title: 'Failed to update Product',
            msg: errorMessage.toString(),
            context: context,
            type: MessageTypeConst.failure);
      },
      orElse: () {},
    );
  },
  builder: (context, state) {
    return state.maybeWhen(
      adminProductLoading: () {
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
      return CustomButton(
        onPressed: () {
          _validCreateProductButton(context);
        },
        text: '$productTitleStatus Product',
        width: double.infinity,
        height: 60.h,
        backgroundColor: Colors.white,
        textColor: context.colors.bluePinkDark,
        threeRadius: 50,
        lastRadius: 50,
      );
    },);
  },
),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _validCreateProductButton(BuildContext context) async {
    if (widget.product!=null) {
      _updateProduct(context);
    } else {
      _createNewProduct(context);
    }
  }

  Future<void> _updateProduct(BuildContext context) async {
    final productImagesList = context.read<FileCubit>().imagesList;
    if (productImagesList.isEmpty) {
      aweSnackBar(
          title: 'Empty Image',
          msg: context.translate(LangKeys.validPickImage),
          context: context,
          type: MessageTypeConst.help);
    }
    if(categoryNameController.text.isEmpty||categoryId.isEmpty){
      aweSnackBar(
          title: 'Empty Image',
          msg: 'Please select a category',
          context: context,
          type: MessageTypeConst.help);
    }
    if (formKye.currentState!.validate() && productImagesList.isNotEmpty &&categoryNameController.text.isNotEmpty&& categoryId.isNotEmpty) {
      context.read<AdminProductBloc>().add(AdminProductEvent.updateAdminProduct(
              body: UpdateProductEntity(
            id: widget.product!.id,
            title: productNameController.text.trim(),
            price: int.parse(priceController.text.trim()),
            description: descriptionController.text.trim(),
            categoryId: double.parse(categoryId),
            images: productImagesList,
          )));
    }
  }

  Future<void> _createNewProduct(BuildContext context) async {
    final productImagesList = context.read<FileCubit>().imagesList;
    if (productImagesList.isEmpty) {
      aweSnackBar(
          title: 'Empty Image',
          msg: context.translate(LangKeys.validPickImage),
          context: context,
          type: MessageTypeConst.help);
    }
    if(categoryNameController.text.isEmpty){
      debugPrint('categoryNameController.text.isEmpty ${categoryId.isEmpty}');
      aweSnackBar(
          title: 'Empty Image',
          msg: 'Please select a category',
          context: context,
          type: MessageTypeConst.help);
    }
    if (formKye.currentState!.validate() && productImagesList.isNotEmpty &&categoryNameController.text.isNotEmpty) {
      context.read<AdminProductBloc>().add(AdminProductEvent.createAdminProduct(
              body: CreateProductEntity(
            title: productNameController.text.trim(),
            price: double.parse(priceController.text.trim()).toDouble(),
            description: descriptionController.text.trim(),
            categoryId: categoryId,
            images: productImagesList,
          )));

    }
  }
}
