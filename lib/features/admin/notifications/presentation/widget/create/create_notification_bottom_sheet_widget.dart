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
import 'package:shoply/core/utils/widgets/custom_dropdown_search.dart';
import 'package:shoply/core/utils/widgets/snack_bar.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/admin/notifications/data/model/add_notification_model.dart';
import 'package:shoply/features/admin/notifications/presentation/bloc/add_notification/admin_notifications_bloc.dart';
import 'package:shoply/features/admin/notifications/presentation/widget/create/product_item.dart';
import 'package:shoply/features/admin/products/data/model/get_products_list/get_all_products.dart';
import 'package:shoply/features/admin/products/presentation/bloc/admin_product_bloc.dart';

class CreateNotificationBottomSheetWidget extends StatefulWidget {
  const CreateNotificationBottomSheetWidget({
    super.key,
    this.notification,
  });

  final AddNotificationModel? notification;

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
    if (widget.notification != null) {
      notificationTitleController.text = widget.notification!.title;
      notificationBodyController.text = widget.notification!.body;
      productNameController.text = widget.notification!.productName;
      productId = widget.notification!.productId;
      _selectedProduct = Product(
        productId,
        productNameController.text,
        0,
        '',[],CategoryProductModel('','',));
      notificationTitleStatus = "Update";
      notificationStatus = "Edit";
      debugPrint('productId $productId');
      debugPrint('productName ${productNameController.text}');
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
            BlocConsumer<AdminProductBloc, AdminProductState>(
              builder: (context, state) {
                return state.maybeWhen(
                  getAdminProductListSuccess: (productsList) {
                    if(widget.notification!= null){
                      productNameController.text = widget.notification?.title??'';
                      productId = widget.notification?.productId?? '';
                    }
                    return SizedBox(
                      width: double.infinity,
                      child: SizedBox(
                        child: CustomDropdownSearch<Product>(

                          itemList: productsList ?? [],

                          onChanged: (item) {
                            setState(() {
                              productId = item.id ?? '';
                              productNameController.text = item.title??'';
                              _selectedProduct = item;
                              debugPrint('productId $productId');
                              debugPrint('productName ${productNameController.text}');
                            });
                          },
                          itemAsString: (item) {
                            productId = item.id ?? '';
                            productNameController.text = item.title??'';
                            _selectedProduct = item;
                            debugPrint('productId $productId');
                            debugPrint('productName ${productNameController.text}');
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
            BlocConsumer<AdminNotificationsBloc, AdminNotificationsState>(
                listener:
                    (BuildContext context, AdminNotificationsState state) {
              state.maybeWhen(
                addNotificationSuccess: () {
                  context.pop();
                  aweSnackBar(
                      title: 'Successfully Added',
                      msg:
                          '${notificationTitleController.text.trim()} Created Successfully',
                      context: context,
                      type: MessageTypeConst.success);
                },

                addNotificationFailure: (errorMessage) {
                  aweSnackBar(
                      title: 'Failed to add Notification',
                      msg: errorMessage,
                      context: context,
                      type: MessageTypeConst.failure);
                },

                orElse: () {},
              );
            }, builder: (context, state) {
              return state.maybeWhen(
                adminNotificationsLoading: () {
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
                        if (widget.notification != null) {
                          _updateCategory(context);
                        } else {
                           _addNotification(context);
                        }
                      context.pop();
                      },
                      text: '$notificationTitleStatus Notification',
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
            }),

          ],
        ),
      ),
    );
  }

  Future<void> _addNotification(BuildContext context) async {
    if (formKye.currentState!.validate()) {
      var notification = AddNotificationModel(
        title: notificationTitleController.text.trim(),
        body: notificationBodyController.text.trim(),
        productId: productId,
        productName: productNameController.text.trim(),
        createAt: DateTime.now(),
      );

      context.read<AdminNotificationsBloc>().add(
          AdminNotificationsEvent.createNewNotificationEvent(
              body: notification));
    }
  }

  _updateCategory(BuildContext context) {
    if (formKye.currentState!.validate()) {
      widget.notification!.title = notificationTitleController.text.trim();
      widget.notification!.body = notificationBodyController.text.trim();
      widget.notification!.productId = productId;
      widget.notification!.productName = productNameController.text.trim();
      widget.notification!.save();
    }
  }
}
