import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';

class HomeCustomerScreen extends StatelessWidget {
  const HomeCustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Customer',
            style: MyFonts.styleBold700_24
                .copyWith(color: context.colors.bluePinkLight)),
      ),
      body: Center(
        child: Text('Home Customer',
            style: MyFonts.styleBold700_24
                .copyWith(color: context.colors.bluePinkLight)),
      ),
    );
  }
}
