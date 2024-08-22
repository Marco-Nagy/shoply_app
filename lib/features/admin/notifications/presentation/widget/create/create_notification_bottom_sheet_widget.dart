import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/screens/app_text_form_field.dart';
import 'package:shoply/core/utils/widgets/CustomDropdown.dart';
import 'package:shoply/core/utils/widgets/buttons/custom_button.dart';
import 'package:shoply/core/utils/widgets/custom_dropdown_search.dart';
import 'package:shoply/core/utils/widgets/custom_linear_container_admin.dart';
import 'package:shoply/core/utils/widgets/images/custom_image.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/admin/notifications/presentation/widget/create/product_item.dart';
import 'package:shoply/features/admin/products/data/model/get_products_list/get_all_products.dart';
import 'package:shoply/features/admin/products/presentation/bloc/admin_product_bloc.dart';

class CreateNotificationBottomSheetWidget extends StatefulWidget {
  const CreateNotificationBottomSheetWidget({
    super.key,
  });

// final Categories? categories;

  @override
  State<CreateNotificationBottomSheetWidget> createState() =>
      _CreateNotificationBottomSheetWidgetState();
}

class _CreateNotificationBottomSheetWidgetState
    extends State<CreateNotificationBottomSheetWidget> {
  final formKye = GlobalKey<FormState>();
  final notificationTitleController = TextEditingController();
  final notificationBodyController = TextEditingController();
  final productNameController = TextEditingController();
  String productId = "";
  String notificationTitleStatus = "Create";
  String notificationStatus = "Add";

  Product? _selectedProduct = Product(
      '',
      '',
      0,
      '',
      [],
      CategoryProductModel(
        '',
        '',
      ));

  // SingleSelectController<Product>? _selectController;
  @override
  void initState() {
    super.initState();
    _updateFormToEdit();
  }

  void _updateFormToEdit() {
    // if (widget.categories !=null) {
    //     notificationTitleController.text = widget.categories!.name!;
    //     categoryTitleStatus= "Update";
    //      categoryStatus= "Edit";
    // }
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
                text: '$notificationTitleStatus Notifications',
                style: MyFonts.styleBold700_18
                    .copyWith(color: context.colors.textColor),
              ),
            ),

            verticalSpacing(8),

            TextApp(
              text: '$notificationStatus Notification Title',
              style: MyFonts.styleMedium500_16
                  .copyWith(color: context.colors.textColor),
            ),
            verticalSpacing(5),

            CustomFadeInRight(
              duration: 400,
              child: AppTextFormField(
                controller: notificationTitleController,
                hintText: context.translate(LangKeys.notifications),
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Please add Your Notification Title';
                  }
                  return null;
                },
              ),
            ),
            TextApp(
              text: '$notificationStatus Notification Body',
              style: MyFonts.styleMedium500_16
                  .copyWith(color: context.colors.textColor),
            ),
            verticalSpacing(5),

            CustomFadeInRight(
              duration: 400,
              child: AppTextFormField(
                controller: notificationBodyController,
                hintText: 'Notification Body',
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Please add Your Notification Body';
                  }
                  return null;
                },
              ),
            ),
            verticalSpacing(5),
            TextApp(
              text: '$notificationStatus Product Id',
              style: MyFonts.styleMedium500_16
                  .copyWith(color: context.colors.textColor),
            ),
            verticalSpacing(5),
            // BlocConsumer<AdminProductBloc, AdminProductState>(
            //   buildWhen: (previous, current) =>
            //       current is GetAdminProductListSuccess,
            //   builder: (context, state) {
            //     return state.maybeWhen(
            //       getAdminProductListSuccess: (productsList) {
            //         // if(widget.product!= null){
            //         //   categoryId = widget.product!.category!.id!;
            //         //   categoryNameController.text = widget.product!.category!.name!;
            //         // }
            //         return SizedBox(
            //           width: double.infinity,
            //           child: SizedBox(
            //             child: CustomDropdownMenu<Product>(
            //               hintText: 'Select a Product',
            //               controller: productNameController,
            //               itemList: productsList ?? [],
            //               itemBuilder: (item) {
            //                 return ProductItem(
            //                     name: item.title ?? '',
            //                     image: item.images!.first ?? '');
            //               },
            //               filled: false,
            //             ),
            //           ),
            //         );
            //       },
            //       orElse: () => CustomDropdownMenu<String>(
            //         itemList: const [''],
            //         itemBuilder: (item) => TextApp(text: item),
            //         filled: false,
            //         hintText: '',
            //         controller: TextEditingController(),
            //       ),
            //     );
            //   },
            //   listener: (BuildContext context, AdminProductState state) {
            //     state.whenOrNull(
            //       getAdminProductListSuccess: (productsList) {
            //         _updateFormToEdit();
            //       },
            //     );
            //   },
            // ),
            // verticalSpacing(14),

            BlocConsumer<AdminProductBloc, AdminProductState>(
              buildWhen: (previous, current) =>
                  current is GetAdminProductListSuccess,
              builder: (context, state) {
                return state.maybeWhen(
                  getAdminProductListSuccess: (productsList) {
                    // if(widget.product!= null){
                    //   categoryId = widget.product!.category!.id!;
                    //   categoryNameController.text = widget.product!.category!.name!;
                    // }
                    return SizedBox(
                      width: double.infinity,
                      child: SizedBox(
                        child: CustomDropdownSearch<Product>(

                          itemList: productsList ?? [],

                          onChanged: (item) {
                            setState(() {
                              productId = item.id ?? '';
                              _selectedProduct = item;
                              debugPrint('productId $productId');
                            });
                            // productNameController.text = item.title ?? '';
                          },
                          itemAsString: (item) {
                            productId = item.id ?? '';
                            _selectedProduct = item;
                            debugPrint('productId $productId');
                            return item.title ?? '';
                          },
                          itemBuilder: (Product item, bool isSelected) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ProductItem(
                                name: item.title ?? '',
                                image: item.images!.first ?? '',
                              ),
                            );
                          },
                          hintText: 'Select a product',
                          controller: productNameController,
                          selectedItem: _selectedProduct!,
                        ),
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
              listener: (BuildContext context, AdminProductState state) {
                state.whenOrNull(
                  getAdminProductListSuccess: (productsList) {
                    _updateFormToEdit();
                  },
                );
              },
            ),
            verticalSpacing(14),

            // BlocConsumer<AdminCategoriesBloc, AdminCategoriesState>(
            //     listener: (BuildContext context, AdminCategoriesState state) {
            //   state.maybeWhen(
            //     addNewCategorySuccess: () {
            //       context.pop();
            //       aweSnackBar(
            //         title: 'Successfully Added',
            //           msg:
            //               '${notificationTitleController.text.trim()} Created Successfully',
            //           context: context,
            //           type: MessageTypeConst.success);},
            //     updateCategorySuccess: () {
            //       context.pop();
            //       aweSnackBar(
            //         title: 'Successfully Updated',
            //           msg:
            //               '${notificationTitleController.text.trim()} Updated Successfully',
            //           context: context,
            //           type: MessageTypeConst.success);},
            //     addNewCategoryFailure: (errorMessage) {
            //       aweSnackBar(
            //         title:
            //           'Failed to add new category',
            //           msg: errorMessage,
            //           context: context,
            //           type: MessageTypeConst.failure);
            //     },
            //     updateCategoryFailure: (errorMessage) {
            //       aweSnackBar(
            //         title: 'Failed to update category',
            //           msg: errorMessage,
            //           context: context,
            //           type: MessageTypeConst.failure);
            //     },
            //     orElse: () {},
            //   );
            // }, builder: (context, state) {
            //   return state.maybeWhen(
            //     adminCategoriesLoading: () {
            //       return CustomFadeInUp(
            //         duration: 400,
            //         child: Center(
            //           child: CircularProgressIndicator(
            //             color: context.colors.bluePinkLight,
            //           ),
            //         ),
            //       );
            //     },
            //     orElse: () {
            //       return
            CustomFadeInUp(
              duration: 400,
              child: CustomButton(
                onPressed: () {
                  // if (widget.categories != null){
                  //   _updateCategory(context).whenComplete(() {
                  //     context.read<AdminCategoriesBloc>().add(const AdminCategoriesEvent.fetchAdminCategories());
                  //   },);
                  // }else {
                  //   _createNewCategory(context).whenComplete(() {
                  //
                  //     context.read<AdminCategoriesBloc>().add(const AdminCategoriesEvent.fetchAdminCategories());
                  //
                  //   },);
                  // }
                },
                text: '$notificationTitleStatus Notification',
                width: double.infinity,
                height: 60.h,
                backgroundColor: Colors.white,
                textColor: context.colors.bluePinkDark,
                threeRadius: 50,
                lastRadius: 50,
              ),
            ),
            // },
            // );
            // })
          ],
        ),
      ),
    );
  }
}
