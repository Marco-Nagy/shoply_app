import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';

class CustomDropdownMenu<T> extends StatefulWidget {
  const CustomDropdownMenu(
      {required this.itemList,
      required this.itemBuilder,
      super.key,
      required this.filled,
      this.fillColour,
       this.readOnly,
      this.suffixIcon,
      this.prefixIcon,
      required this.hintText,
      this.keyboardType,
      this.hintStyle,
      this.maxLength,
      this.maxLines, required this.controller, });
  final List<T> itemList;
  final Widget Function(T item) itemBuilder;
  final TextEditingController controller;
  final bool filled;
  final Color? fillColour;
  final bool? readOnly;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String hintText;
  final TextInputType? keyboardType;
  final TextStyle? hintStyle;
  final int? maxLength;
  final int? maxLines;

  @override
  _CustomDropdownMenuState<T> createState() => _CustomDropdownMenuState<T>();
}

class _CustomDropdownMenuState<T> extends State<CustomDropdownMenu<T>> {
  T? _selectedItem;
  List<T> _filteredItems = [];

  @override
  void initState() {
    _filteredItems.addAll(widget.itemList);
    super.initState();
  }

  void _filterItems(String query) {
    setState(() {
      _filteredItems = widget.itemList
          .where((item) =>
          item.toString().toLowerCase().contains(query.toLowerCase()),)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {

    return DropdownButtonFormField<T>(
      value: _selectedItem,
      onChanged: (T? value) {
        setState(() {
          _selectedItem = value as T ;
        });
      },
      elevation: 11,
      isExpanded: true,
      icon: const Icon(
        Icons.expand_more,
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(15),
      dropdownColor: context.colors.navBarbg,
      menuMaxHeight: context.height*.4,
      items: _filteredItems.map((item) {
        return DropdownMenuItem<T>(
          value: item,
          child: widget.itemBuilder(item),
        );
      }).toList(),
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
        filled: widget.filled,
        fillColor: widget.fillColour,
        suffixIcon: widget.suffixIcon,
        prefixIcon: widget.prefixIcon,
        hintText: widget.hintText,
        hintStyle: MyFonts.styleRegular400_14.copyWith(
          color: context.colors.textColor,
        ),
        errorStyle: MyFonts.styleRegular400_12.copyWith(
          color: Colors.red,
        ),
      ),
    );
  }
}

