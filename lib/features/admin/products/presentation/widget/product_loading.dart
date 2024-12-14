import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/utils/loading/loading_shimmer.dart';
import 'package:shoply/core/utils/widgets/custom_linear_container_admin.dart';

class ProductLoading extends StatelessWidget {
  const ProductLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 20.h),
        ),
        SliverToBoxAdapter(
          child: GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //Number of cloums
              crossAxisSpacing: 8, // Spacing between colums
              mainAxisSpacing: 15, //Spacing between rows
              childAspectRatio: 165 / 250,
            ),
            itemBuilder: (context, index) {
              return  CustomLinearContainerAdmin(
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
                            child: LoadingShimmer(
                              height: 160.h,
                              width: 160.w,
                         borderRadius: 15.w,
                            ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    // title
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child:LoadingShimmer(
                        height: 10.h,
                        width: 140.w,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    // Category Name
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child:LoadingShimmer(
                        height: 10.h,
                        width: 120.w,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    // Price
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: LoadingShimmer(
                        height: 10.h,
                        width: 100.w,
                      ),
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              );
            },
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 20.h),
        ),
      ],
    );
  }
}
