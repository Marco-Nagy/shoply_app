import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';

class CustomBottomSheet {
  CustomBottomSheet._();

  static void showModalBottomSheetWidget({
    required BuildContext context,
    required Widget child,
    Color? backGroundColor,
    VoidCallback? whenComplete,
  }) =>
      showModalBottomSheet(
          context: context,
          backgroundColor: backGroundColor??context.colors.bluePinkDark,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          enableDrag: true,
          barrierColor: Colors.transparent,
          builder: (BuildContext context) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: child,
                ),
              ),
            );
          }).whenComplete(whenComplete??(){});
}
