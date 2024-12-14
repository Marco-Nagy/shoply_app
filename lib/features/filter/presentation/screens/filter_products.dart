import 'package:flutter/material.dart';
import 'package:shoply/core/Services/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/routes/app_routes.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/screens/app_text_form_field.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/filter/domain/entities/filter_products_entity.dart';

class FilterProducts extends StatefulWidget {
  const FilterProducts({super.key});

  @override
  State<FilterProducts> createState() => _FilterProductsState();
}

class _FilterProductsState extends State<FilterProducts> {

  final formKye = GlobalKey<FormState>();
  var productNameController = TextEditingController();
  var maxPriceController = TextEditingController();
  var minPriceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKye,
      child: Container(
        width: 250,
        height: context.height * .80,
        decoration: BoxDecoration(
          color: context.colors.navBarbg,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(100),
            topRight: Radius.circular(150),
          ),
          boxShadow: [
            BoxShadow(
                color: context.colors.bluePinkLight.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(5, 3),
                blurStyle: BlurStyle.inner),
          ],
        ),
        child: CustomScrollView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
                width: 250,
                child: Container(
                  decoration: BoxDecoration(
                    color: context.colors.bluePinkDark,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(150),
                      bottomLeft: Radius.circular(120),
                    ),
                  ),
                  child: Center(
                    child: Text('Product Search',
                        style: MyFonts.styleBold700_18
                            .copyWith(color: context.colors.textColor)),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: Column(
                    children: [
                      CustomFadeInDown(
                        duration: 400,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextApp(
                              text: 'Product Name',
                              style: MyFonts.styleMedium500_14
                                  .copyWith(color: context.colors.textColor),
                            ),
                            AppTextFormField(
                              controller: productNameController,
                              hintText: 'Search Product Name',
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    value.length < 2) {
                                  return 'Please Selected Your Category Name';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                      CustomFadeInRight(
                        duration: 400,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: 120,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextApp(
                                  text: 'Max Price',
                                  style: MyFonts.styleMedium500_14.copyWith(
                                      color: context.colors.textColor),
                                ),
                                AppTextFormField(
                                  controller: maxPriceController,
                                  hintText: 'Max Price',
                                  validator: (value) {
                                    if (value == null ||
                                        value.isEmpty ||
                                        value.length < 2) {
                                      return 'Please Selected Your Category Name';
                                    }
                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      CustomFadeInLeft(
                        duration: 400,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            width: 120,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                TextApp(
                                  text: 'Min Price',
                                  style: MyFonts.styleMedium500_16.copyWith(
                                      color: context.colors.textColor),
                                ),
                                AppTextFormField(
                                  controller: minPriceController,
                                  hintText: 'min Price',
                                  validator: (value) {
                                    if (value == null ||
                                        value.isEmpty ||
                                        value.length < 2) {
                                      return 'Please Selected Your Category Name';
                                    }
                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
                        SliverToBoxAdapter(
              child: SizedBox(
                // bottom: 0,
                height: context.height*.21,)),
            SliverToBoxAdapter(
              child: SizedBox(
                // bottom: 0,
                height: 150,
                width: 250,
                child: Container(
                  width: 250,
                  height: context.height * .90,
                  decoration: BoxDecoration(
                    color: context.colors.bluePinkDark,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.elliptical(100, 100),
                        topRight: Radius.circular(150)),
                    boxShadow: [
                      BoxShadow(
                          color: context.colors.bluePinkLight.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(5, 3),
                          blurStyle: BlurStyle.outer),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: CustomFadeInRight(
                          duration: 400,
                          child: InkWell(
                            onTap: () async {
                              _validateFilter();
                            },
                            child: Container(
                              height: 60,
                              width: 100,
                              decoration: BoxDecoration(
                                color: context.colors.bluePinkDark,
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.elliptical(100, 100),
                                    topRight: Radius.circular(150)),
                                boxShadow: [
                                  BoxShadow(
                                      color: context.colors.bluePinkLight
                                          .withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: const Offset(5, 3),
                                      blurStyle: BlurStyle.outer),
                                ],
                              ),
                              child: Center(
                                child: TextApp(
                                  text: 'Search',
                                  style: MyFonts.styleBold700_18
                                      .copyWith(color: context.colors.textColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CustomFadeInLeft(
                          duration: 400,
                          child: InkWell(
                            onTap: () {
                              _resetFilter();
                            },
                            child: Container(
                              height: 65,
                              width: 100,
                              margin: const EdgeInsets.only(bottom: 1),
                              decoration: BoxDecoration(
                                color: context.colors.textColor,
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.elliptical(100, 100),
                                    topRight: Radius.circular(150)),
                                boxShadow: [
                                  BoxShadow(
                                      color: context.colors.bluePinkLight
                                          .withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      offset: const Offset(5, 3),
                                      blurStyle: BlurStyle.inner),
                                ],
                              ),
                              child: Center(
                                child: TextApp(
                                  text: 'Reset',
                                  style: MyFonts.styleBold700_18.copyWith(
                                      color: context.colors.bluePinkDark),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
  _validateFilter() {
    if (formKye.currentState!.validate()) {
      final String userRole =
          SharedPrefHelper().getString(key: SharedPrefKeys.userRole) ?? '';
      if (userRole == 'admin') {
        context.pushNamed(
          AppRoutes.filteredAdminProducts,
          arguments: FilterProductsEntity(
            int.parse(minPriceController.text).toInt(),
            int.parse(maxPriceController.text).toInt(),
            productNameController.text,
          ),
        );
        debugPrint('filteredAdminProducts  ${int.parse(minPriceController.text.toString()).toString() +int.parse(maxPriceController.text.toString()).toString() + productNameController.text}');

      } else {
        context.pushNamed(
          AppRoutes.filteredCustomerProducts,
          arguments: FilterProductsEntity(
            int.parse(minPriceController.text.toString()).toInt(),
            int.parse(maxPriceController.text.toString()).toInt(),
            productNameController.text.toString(),
          ),
        );
debugPrint('filteredCustomerProducts  ${int.parse(minPriceController.text.toString()).toString() +int.parse(maxPriceController.text.toString()).toString() + productNameController.text}');
      }
    }
  }

  _resetFilter() {
    minPriceController.clear();
    maxPriceController.clear();
    productNameController.clear();
    context.pop();
  }
}
