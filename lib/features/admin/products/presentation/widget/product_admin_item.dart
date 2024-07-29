import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/styles/icons/app_animated_icons.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/app_animated_icon.dart';
import 'package:shoply/core/utils/widgets/custom_bottom_sheet.dart';
import 'package:shoply/core/utils/widgets/custom_dialogs.dart';
import 'package:shoply/core/utils/widgets/custom_linear_container_admin.dart';
import 'package:shoply/core/utils/widgets/images/custom_image.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/admin/categories/presentation/bloc/admin_categories_bloc.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';
import 'package:vibration/vibration.dart';

import 'create_product_bottom_sheet_widget.dart';

class ProductAdminItem extends StatefulWidget {
  const ProductAdminItem({
    required this.imageUrl,
    required this.title,
    required this.categoryName,
    required this.price,
    required this.productId,
    required this.imageList,
    required this.description,
    required this.categoryId,
    super.key,
  });

  final String imageUrl;
  final String title;
  final String categoryName;
  final String description;
  final String price;
  final String productId;
  final String categoryId;
  final List<String> imageList;

  @override
  State<ProductAdminItem> createState() => _ProductAdminItemState();
}

class _ProductAdminItemState extends State<ProductAdminItem>
    with TickerProviderStateMixin {
  late AnimationController animationTrashController;
  late AnimationController animationEditController;
  ValueNotifier<bool> itemPressed = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    animationTrashController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    animationEditController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    animationTrashController.dispose();
    animationEditController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onLongPress: () {
            itemPressed.value = true;
          },
          child: CustomLinearContainerAdmin(
            height: 250.h,
            width: 165.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Buttons

                // Show Image
                Flexible(
                  child: Container(
                    height: 160.h,
                    width: 160.w,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.w),
                    ),
                    child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 10.w,
                        child: CustomImage(
                          imageUrl: widget.imageUrl,
                        )),
                  ),
                ),
                SizedBox(height: 10.h),
                // title
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: TextApp(
                    text: widget.title,
                    style: MyFonts.styleBold700_14
                        .copyWith(color: context.colors.textColor),
                    maxLines: 1,
                  ),
                ),
                SizedBox(height: 5.h),
                // Category Name
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: TextApp(
                    text: widget.categoryName,
                    style: MyFonts.styleBold700_12
                        .copyWith(color: context.colors.textColor),
                    maxLines: 1,
                  ),
                ),
                SizedBox(height: 5.h),
                // Price
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: TextApp(
                    text: '\$ ${widget.price}',
                    style: MyFonts.styleBold700_12
                        .copyWith(color: context.colors.textColor),
                  ),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ),
        ValueListenableBuilder(
          valueListenable: itemPressed,
          builder: (context, value, child) {
            return Visibility(
              visible: value,
              child: InkWell(
                onTap: () {
                  itemPressed.value = false;
                },
                child: Positioned(
                  bottom: 100,
                  right: 10,
                  left: 10,
                  child: Expanded(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomFadeInRight(
                            duration: 400,
                            child: Container(
                              height: 70,
                              width: 70,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: AppAnimatedIcon(
                                size: 35,
                                backGroundColor: Colors.blue,
                                animationController: animationEditController,
                                iconAsset: AppAnimatedIcons.edit,
                                onTap: () async {
                                  Vibration.vibrate(
                                      duration: 700,
                                      pattern: [50, 100, 50, 500]);
                                  Future.delayed(
                                      const Duration(milliseconds: 700));
                                  CustomBottomSheet.showModalBottomSheetWidget(
                                      context: context,
                                      child: MultiBlocProvider(
                                          providers: [
                                            BlocProvider(
                                                create: (context) =>
                                                    sl<FileCubit>()),
                                            BlocProvider(
                                                create: (context) => sl<
                                                    AdminCategoriesBloc>()
                                                  ..add(const AdminCategoriesEvent
                                                      .fetchAdminCategories())),
                                          ],
                                          child:
                                              const CreateProductBottomSheetWidget()));
                                  itemPressed.value= false;
                                },
                              ),
                            ),
                          ),
                          CustomFadeInLeft(
                            duration: 400,
                            child: Container(
                              height: 70,
                              width: 70,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: AppAnimatedIcon(
                                size: 35,
                                backGroundColor: Colors.redAccent,
                                animationController: animationTrashController,
                                iconAsset: AppAnimatedIcons.trash,
                                onTap: () async {
                                  Vibration.vibrate(
                                      duration: 700,
                                      pattern: [50, 100, 50, 500]);
                                  Future.delayed(
                                      const Duration(milliseconds: 700));
                                  CustomDialog.twoButtonDialog(
                                      context: context,
                                      textBody:
                                          'Are you sure you want to delete ??',
                                      textButton1: 'Delete',
                                      textButton2: 'Cancel',
                                      onPressed: () async {
                                        context.pop();
                                      },
                                      isLoading: true);
                                  itemPressed.value= false;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
