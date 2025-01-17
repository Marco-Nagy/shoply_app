import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/features/customer/favorites/presentation/cubit/favorites_cubit.dart';
import 'package:shoply/features/customer/favorites/presentation/widgets/favorit_body.dart';
import 'package:shoply/features/customer/main/presentation/widgets/main_customer_app_bar.dart';


class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<FavoritesCubit>()..getFavorites(),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MainCustomerAppBar(
          title: 'Favorites',
        ),
        body: FavoriteBody(),
      ),
    );
  }
}
