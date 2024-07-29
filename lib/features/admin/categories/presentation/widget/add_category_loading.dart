import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/utils/loading/loading_shimmer.dart';
import 'package:shoply/core/utils/widgets/custom_linear_container_admin.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';

class AddCategoryLoading extends StatelessWidget {
  const AddCategoryLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 7,

      shrinkWrap: true,
      itemBuilder: (context, index) {
      return CustomLinearContainerAdmin(
        height: 130.h,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LoadingShimmer(
                height: 30.h,
                width: 160.h,
              ),
              Flexible(
                child: LoadingShimmer(
                  height: 90.h,
                  width: 120.w,
                ),
              ),
            ],
          ),
        ),
      );
    }, separatorBuilder: (BuildContext context, int index)=>verticalSpacing(16),);
  }

}
