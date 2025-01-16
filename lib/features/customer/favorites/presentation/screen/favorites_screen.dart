import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/features/customer/main/presentation/widgets/main_customer_app_bar.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: const MainCustomerAppBar(
        title: 'Favorites',
      ),
      body:  Center(
        child: Text('This is the Favorites screen',
          style: MyFonts.styleBold700_24
              .copyWith(color: context.colors.textColor),),
      ),
    );
  }
}
