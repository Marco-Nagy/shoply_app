import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/utils/widgets/custom_linear_container_admin.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';

class BannerSliders extends StatefulWidget {
  const BannerSliders({super.key});

  @override
  _BannerSlidersState createState() => _BannerSlidersState();
}

class _BannerSlidersState extends State<BannerSliders> {
  int activeIndex = 0;
  List<String> imageList = [
    'https://i.postimg.cc/J0R7WL4M/banner-1.jpg',
    'https://i.postimg.cc/C5JhhQzD/banner-2.jpg',
    'https://i.postimg.cc/Vkv66m9N/banner-3.jpg'
        'https://i.postimg.cc/k63pW6hN/banner-4.jpg',
    'https://i.postimg.cc/TwV2Swxt/banner-5.jpg',
    'https://i.postimg.cc/xCDTtmwk/banner-6.jpg',
    'https://i.postimg.cc/L8Wsgwv3/banner-7.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 160.h,
              reverse: true,
              viewportFraction: 1.0,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
            itemCount: 5,
            itemBuilder: (context, index, realIndex) {
              return CustomLinearContainerAdmin(
                  width: context.width,
                  height: 200.h,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: CachedNetworkImage(
                          fit: BoxFit.fill, imageUrl: imageList[index])));
            },
          ),
          verticalSpacing(10),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList
                  .asMap()
                  .entries
                  .map(
                    (e) => Container(
                      width: 12.0,
                      height: 6.0,
                      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                          // shape: BoxShape.circle,
                          color: activeIndex == e.key
                              ? context.colors.bluePinkLight
                              : Colors.grey.shade50
                              .withOpacity(activeIndex == e.key ? 0.9 : 0.4)),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
