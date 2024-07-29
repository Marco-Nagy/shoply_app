import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/screens/app_text_form_field.dart';
import 'package:shoply/core/utils/widgets/CustomDropdown.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/admin/categories/data/model/get_all_categories/get_all_categories.dart';
import 'package:shoply/features/admin/categories/presentation/bloc/admin_categories_bloc.dart';

class ProductsSearch extends StatefulWidget {
  const ProductsSearch({super.key});

  @override
  State<ProductsSearch> createState() => _ProductsSearchState();
}

class _ProductsSearchState extends State<ProductsSearch> {
  var categoryNameController = TextEditingController();
  var maxPriceController = TextEditingController();
  var minPriceController = TextEditingController();
  String categoryId = '';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => sl<AdminCategoriesBloc>()
              ..add(const AdminCategoriesEvent.fetchAdminCategories())),
      ],
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
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
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
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 8),
                    child: Column(
                      children: [
                        verticalSpacing(5),
                        CustomFadeInDown(
                          duration: 400,
                          child: AppTextFormField(
                            controller: categoryNameController,
                            hintText: 'Product Name',
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.length < 2) {
                                return 'Please Selected Your Category Name';
                              }
                              return null;
                            },
                          ),
                        ),
                        verticalSpacing(10),
                        CustomFadeInRight(
                          duration: 400,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 120,
                              child: AppTextFormField(
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
                            ),
                          ),
                        ),
                        verticalSpacing(5),
                        CustomFadeInLeft(
                          duration: 400,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              width: 120,
                              child: AppTextFormField(
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
                            ),
                          ),
                        ),
                        verticalSpacing(10),
                        BlocBuilder<AdminCategoriesBloc, AdminCategoriesState>(
                          buildWhen: (previous, current) =>
                              current is GetAdminCategoriesListSuccess,
                          builder: (context, state) {
                            return state.maybeWhen(
                              getAdminCategoriesListSuccess: (categoriesList) {
                                return CustomFadeInUp(
                                  duration: 400,
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: CustomDropdownMenu<Categories?>(
                                      hintText: 'Select a Category',
                                      controller: categoryNameController,
                                      itemList: categoriesList,
                                      itemBuilder: (item) {
                                        categoryId = item?.id ?? '';
                                        categoryNameController.text =
                                            item?.name ?? '';
                                        return TextApp(
                                          text: item!.name ?? '',
                                          style: MyFonts.styleMedium500_16
                                              .copyWith(
                                                  color:
                                                      context.colors.textColor),
                                        );
                                      },
                                      filled: false,
                                    ),
                                  ),
                                );
                              },
                              orElse: () => CustomDropdownMenu<String>(
                                itemList: const [''],
                                itemBuilder: (item) => TextApp(text: item),
                                filled: false,
                                hintText: '',
                                controller: TextEditingController(),
                              ),
                            );
                          },
                        ),
                        verticalSpacing(14),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
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
                    Align(
                      alignment: Alignment.bottomRight,
                      child: CustomFadeInLeft(
                        duration: 400,
                        child: Container(
                          height: 65,
                          width: 100,
                          margin: EdgeInsets.only(bottom: 1),
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
                              style: MyFonts.styleBold700_18
                                  .copyWith(color: context.colors.bluePinkDark),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
