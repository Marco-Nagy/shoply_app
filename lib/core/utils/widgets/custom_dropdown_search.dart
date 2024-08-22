import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';

class CustomDropdownSearch<T> extends StatelessWidget {
  const CustomDropdownSearch({
    required this.itemList,
    required this.itemBuilder,
    super.key,
    this.suffixIcon,
    this.prefixIcon,
    required this.hintText,
    this.hintStyle,
    required this.controller,
    this.onChanged,
    required this.itemAsString,
    required this.selectedItem,
  });

  final List<T> itemList;
  final Widget Function(T item, bool isSelected) itemBuilder;
  final DropdownSearchItemAsString<T> itemAsString;
  final Function(T item)? onChanged;
  final TextEditingController controller;
  final T selectedItem;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String hintText;
  final TextStyle? hintStyle;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<T>(
      clearButtonProps: ClearButtonProps(
        icon: Icon(
          Icons.clear,
          color: context.colors.textColor,
        ),
        onPressed: () {
          controller.clear();
        },
      ),
      dropdownDecoratorProps: DropDownDecoratorProps(
        baseStyle: MyFonts.styleRegular400_14.copyWith(
          color: context.colors.textColor,
        ),
        dropdownSearchDecoration: InputDecoration(
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: context.colors.textFormBorder),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: context.colors.textFormBorder),
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
          hintText: hintText,
          enabled: true,
          iconColor: context.colors.textColor,
          isCollapsed: true,
          hintFadeDuration: const Duration(milliseconds: 200),
          suffixIcon: const Icon(
            Icons.expand_more,
            color: Colors.white,
          ),
          suffix: const Icon(
            Icons.expand_more,
            color: Colors.white,
          ),
          hintStyle: MyFonts.styleRegular400_14.copyWith(
            color: context.colors.textColor,
          ),
        ),
      ),
      items: itemList,
      compareFn: (item1, item2) => true,
      onChanged: (item) => onChanged,
      selectedItem: selectedItem,
      popupProps: PopupProps<T>.menu(
        menuProps: MenuProps(
          elevation: 11,
          clipBehavior: Clip.antiAlias,
          backgroundColor: context.colors.navBarbg,
          borderRadius: BorderRadius.circular(15),
          borderOnForeground: true,
        ),
        showSearchBox: true,
        showSelectedItems: true,
        searchFieldProps: TextFieldProps(
          controller: controller,
          style: MyFonts.styleRegular400_14.copyWith(
            color: context.colors.textColor,
          ),
          decoration: InputDecoration(
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: context.colors.textFormBorder),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: context.colors.textFormBorder),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.red),
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            hintText: hintText,
            hintStyle: MyFonts.styleRegular400_14.copyWith(
              color: context.colors.textColor,
            ),
            errorStyle: MyFonts.styleRegular400_12.copyWith(
              color: Colors.red,
            ),
          ),
        ),
        fit: FlexFit.tight,
        itemBuilder: (context, item, isSelected) =>
            itemBuilder(item, isSelected),
      ),
      itemAsString: (item) => itemAsString(item),
      // dropdownBuilder: (context, item) => TextApp(
      //   text: item?.title ?? '',
      //   style: MyFonts.styleMedium500_16
      //       .copyWith(color: context.colors.textColor),
      // ),
    );
  }
}
