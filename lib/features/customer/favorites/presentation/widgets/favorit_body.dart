import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/features/customer/favorites/presentation/cubit/favorites_cubit.dart';

import 'favorite_product_item.dart';

class FavoriteBody extends StatelessWidget {
  const FavoriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          success: (favorites) {
            return GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: favorites.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, //Number of cloums
                crossAxisSpacing: 8, // Spacing between colums
                mainAxisSpacing: 1, //Spacing between rows
                childAspectRatio: 165 / 250,
              ),
              itemBuilder: (context, index) {
                return FavoriteProductItem(
                  product: favorites[index],
                );
              },
            );
          },
        );
      },
    );
  }
}
