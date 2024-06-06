import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text(
          'بيتر ناجى',
          style: MyFonts.styleBold700_18,),),
      body:  InkWell(
        onTap: (){
          context.pop();
        },
        child: Center(child:        Text(
          'Peter Nagy',
          style: MyFonts.styleMedium500_16,
        ),),
      ),
    );
  }
}
