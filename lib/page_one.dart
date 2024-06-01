import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoply/core/helpers/extentions.dart';
import 'package:shoply/core/routes/app_routes.dart';
import 'package:shoply/core/styles/my_fonts.dart';
import 'package:shoply/page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ماركو ناجى',
          style: MyFonts.arabicBold700_18,
        ),
      ),
      backgroundColor: Colors.blueAccent,
      body: InkWell(
        onTap: () {
          context.pushNamed(AppRoutes.two);
        },
        child: Center(
          child: Text(
            'Marco Nagy',
            style: MyFonts.englishMedium500_16
          ),
        ),
      ),
    );
  }
}
