import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/utils/loading/loading_shimmer.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';

class UploadingImagesLoading extends StatelessWidget {
  const UploadingImagesLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .15,
      width: 100,
      child: Row(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: (context.width/100).toInt(),
            scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        // border: Border.all(
                        //   color: context.colors.bluePinkLight,
                        //   width: 1,
                        //   style: BorderStyle.none,
                        // ),
                        boxShadow: [BoxShadow(color: context.colors.bluePinkLight,blurStyle: BlurStyle.inner)],
                        borderRadius: BorderRadius.circular(10.w),
                        // image: DecorationImage(
                        //     fit: BoxFit.scaleDown,
                        //     image: NetworkImage(cubit.getImageUrl,
                        //         scale: 1.5) as ImageProvider),
                      ),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 10.w,
                        child:  LoadingShimmer(
                          width: 100,
                          height: 100,
                          borderRadius:10.w ,
                        ),
                      )),
                );
              }, separatorBuilder: (BuildContext context, int index)=>verticalSpacing(16),),
          ),
        ],
      ),
    );
  }
}
