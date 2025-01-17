import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/helpers/extension/string_exetension.dart';
import 'package:shoply/core/routes/app_routes.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/styles/icons/app_animated_icons.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/app_animated_icon.dart';
import 'package:shoply/core/utils/widgets/images/custom_container_linear_customer.dart';
import 'package:shoply/core/utils/widgets/images/custom_image.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/customer/favorites/domain/entities/favorites_entity.dart';
import 'package:shoply/features/customer/favorites/presentation/cubit/favorites_cubit.dart';
import 'package:vibration/vibration.dart';

class FavoriteProductItem extends StatefulWidget {
  const FavoriteProductItem({
    super.key,
    required this.product,
  });

  final FavoritesEntity product;

  @override
  State<FavoriteProductItem> createState() => _FavoriteProductItemState();
}

class _FavoriteProductItemState extends State<FavoriteProductItem>
    with TickerProviderStateMixin {
  late AnimationController animationFavoritController;
  late AnimationController animationEditController;
  ValueNotifier<bool> itemPressed = ValueNotifier(false);
  bool isFavorite = false;

  @override
  initState() {
    super.initState();
    animationFavoritController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    animationEditController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
  }



  @override
  void dispose() {
    animationFavoritController.dispose();
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
          onTap: () {
            context.pushNamed(AppRoutes.productDetails,
                arguments: widget.product.id);
          },
          child: CustomContainerLinearCustomer(
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
                          tag: 'tag${widget.product.id}',
                          imageUrl:
                          widget.product.image.imageProductFormat(),
                        )),
                  ),
                ),
                SizedBox(height: 10.h),
                // title
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: TextApp(
                    text: widget.product.productName,
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
                    text: widget.product.categoryName,
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
                    text: '\$ ${widget.product.price}',
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
                            iconAsset: AppAnimatedIcons.share,
                            onTap: () async {
                              Vibration.vibrate(
                                  duration: 700, pattern: [50, 100, 50, 500]);
                              Future.delayed(const Duration(milliseconds: 800))
                                  .whenComplete(() {
                                itemPressed.value = false;
                              });
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
                            color: Colors.red.shade200,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: BlocBuilder<FavoritesCubit, FavoritesState>(
                            builder: (context, state) {
                              switch (state) {
                            case SuccessFavoritesState():
                              return favoriteIcon( state.favorites.any((element) =>element.productId==widget.product.id.toString() ,));
                            }
                              return favoriteIcon( isFavorite);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
favoriteIcon(bool isFavorite)=>  AppAnimatedIcon(
  size: 35,
  iconColor: isFavorite ? Colors.red : Colors
      .white,
  backGroundColor: Colors.red.shade200,
  animationController: animationFavoritController,
  iconAsset: AppAnimatedIcons.favorite,
  onTap: () async {
    Vibration.vibrate(
        duration: 700,
        pattern: [50, 100, 50, 500]);
    Future.delayed(
        const Duration(milliseconds: 700))
        .whenComplete(
          () {
        itemPressed.value = false;
        _deleteProduct(context,
            favorite: widget.product);
      },
    );
  },
);

  Future<void> _deleteProduct(BuildContext context,
      {required FavoritesEntity favorite}) async {
    context.read<FavoritesCubit>().manageFavoriteUseCase(favorite: favorite).whenComplete(() {
      context.read<FavoritesCubit>().getFavorites();
    },);
  }
}
