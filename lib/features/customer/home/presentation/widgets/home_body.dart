import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key, required this.scrollController});
final ScrollController scrollController ;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: CustomScrollView(
        controller: scrollController,
        slivers: [
          //* Banners

          //* Categories

          //* Products
          SliverToBoxAdapter(
            child: Text(
      'Welcome to the Home Screen',
          style: MyFonts.styleBold700_18
              .copyWith(color: context.colors.textColor),
          ),),
          SliverToBoxAdapter(
            child: ListView.separated(
              shrinkWrap: true,

                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Center(
                        child: Text(
                          'Welcome to the Home Screen',
                          style: MyFonts.styleBold700_18
                              .copyWith(color: context.colors.textColor),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => verticalSpacing(5),
                itemCount: 100),
          )
        ],
      ),
    );
  }
}
