import 'package:flutter/material.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';

import 'home_product_item.dart';

class HomeProductListWidget extends StatelessWidget {
  const HomeProductListWidget({super.key, required this.productList});
  final List<GetProductEntity> productList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: productList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, //Number of cloums
        crossAxisSpacing: 8, // Spacing between colums
        mainAxisSpacing: 1, //Spacing between rows
        childAspectRatio: 165 / 250,
      ),
      itemBuilder: (context, index) {
        return HomeProductItem(
          product: productList[index],
        );
      },
    );
  }
}
