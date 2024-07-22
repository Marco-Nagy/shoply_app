import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/app_images.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/widgets/custom_linear_container_admin.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';
import 'package:shoply/features/files/presentation/widgets/hero_photo_view_route_wrapper.dart';

class AddCategoryItem extends StatelessWidget {
  const AddCategoryItem({
    required this.name,
    required this.image,
    required this.categoryId,
    super.key,
  });

  final String name;
  final String image;
  final String categoryId;

  @override
  Widget build(BuildContext context) {
    return CustomLinearContainerAdmin(
      height: 130.h,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextApp(
                text: name,
                style: MyFonts.styleBold700_18
                    .copyWith(color: context.colors.textColor)),
            Flexible(
              child: InkWell(
                onTap: () {
                  showAdaptiveDialog(
                    context: context,
                    builder: (context) {
                      return BlocProvider(
                        create: (_) => sl<FileCubit>(),
                        child: AlertDialog(
                          content: SizedBox(
                            width: context.width ,
                            height: context.height*.5,
                           child:    HeroPhotoViewRouteWrapper(
                             backgroundDecoration: const BoxDecoration(color: Colors.transparent),
                                tag:image ,
                                imageProvider: NetworkImage(
                                  image,
                                ),
                              ),

                          ),
                        ),
                      );
                    },
                  );
                },
                child: Hero(
                  tag: image,
                  child: Container(
                    height: 100.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.w),
                    ),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 5.w,
                      child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        fadeInCurve: Curves.fastLinearToSlowEaseIn,
                        fadeInDuration: const Duration(milliseconds: 200),
                        height: 100.h,
                        width: 120.w,
                        imageUrl: image,
                        // fit: BoxFit.fill,
                        errorWidget: (context, url, error) => Image.asset(
                          AppImages.appImage,
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _updateCategoryBottomSheet(BuildContext context) {
    // CustomBottomSheet.showModalBottomSheetContainer(
    //   context: context,
    //   widget: MultiBlocProvider(
    //     providers: [
    //       BlocProvider(
    //         create: (context) => sl<UpdateCategoryBloc>(),
    //       ),
    //       BlocProvider(
    //         create: (context) => sl<UploadImageCubit>(),
    //       ),
    //     ],
    //     child: UpdateCategoryBottomWidget(
    //       categoryId: categoryId,
    //       ctageoryName: name,
    //       imageUrl: image,
    //     ),
    //   ),
    //   whenComplete: () {
    //     context.read<GetAllAdminCategoriesBloc>().add(
    //           const GetAllAdminCategoriesEvent.fetchAdminCategories(
    //             isNotLoading: false,
    //           ),
    //         );
    //   },
    // );
  }
}
