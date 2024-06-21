import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';

class HomeAdminScreen extends StatelessWidget {
  const HomeAdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Admin',
          style: MyFonts.styleBold700_24
              .copyWith(color: context.colors.bluePinkDark),
        ),
      ),
      body: Center(
        child: Text('Home Admin',
            style: MyFonts.styleBold700_24
                .copyWith(color: context.colors.bluePinkDark)),
      ),
    );
  }
}
