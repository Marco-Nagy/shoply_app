import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/admin/products/presentation/widget/product_admin_item.dart';

class ProductsListAdmin extends StatelessWidget {
  const ProductsListAdmin({super.key, required this.productList});
 final List<GetProductEntity> productList;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 20.h),
        ),
        SliverToBoxAdapter(
          child: GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: productList.length,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //Number of cloums
              crossAxisSpacing: 8, // Spacing between colums
              mainAxisSpacing: 15, //Spacing between rows
              childAspectRatio: 165 / 250,
            ),
            itemBuilder: (context, index) {
              return ProductAdminItem(product: productList[index],);
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
