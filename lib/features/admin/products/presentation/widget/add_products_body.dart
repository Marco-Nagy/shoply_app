import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/features/admin/products/presentation/widget/product_admin_item.dart';

import 'create_product.dart';

class AddProductsBody extends StatefulWidget {
  const AddProductsBody({super.key});

  @override
  State<AddProductsBody> createState() => _AddProductsBodyState();
}

class _AddProductsBodyState extends State<AddProductsBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late AnimationController animationEController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    animationEController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    animationController.dispose();
    animationEController.dispose();
    super.dispose();
  }

  ValueNotifier<bool> itemPressed = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        children: [
          //Add products button
           const CreateProduct(),
          //Get ALl Product
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {},
              child: CustomScrollView(
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
                        return const ProductAdminItem(
                          imageUrl: "https://i.imgur.com/QkIa5tT.jpeg",
                          productId: '',
                          categoryName: 'TShirts',
                          price: '100',
                          title: 'Sweet Shirts',
                          imageList: [],
                          description: 'description',
                          categoryId: '',
                        );
                      },
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 20.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
