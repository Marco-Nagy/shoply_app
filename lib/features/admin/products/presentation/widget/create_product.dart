import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/widgets/buttons/custom_button.dart';
import 'package:shoply/core/utils/widgets/custom_bottom_sheet.dart';
import 'package:shoply/core/utils/widgets/text_app.dart';
import 'package:shoply/features/admin/categories/presentation/bloc/admin_categories_bloc.dart';
import 'package:shoply/features/admin/products/presentation/bloc/admin_product_bloc.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';

import 'create_product_bottom_sheet_widget.dart';

class CreateProduct extends StatelessWidget {
  const CreateProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextApp(
          text: 'Get All Products',
          style: MyFonts.styleMedium500_18
              .copyWith(color: context.colors.textColor),
        ),
        CustomButton(
          onPressed: () {
            CustomBottomSheet.showModalBottomSheetWidget(
                context: context,
                child: MultiBlocProvider(providers: [
                  BlocProvider(create: (context) => sl<FileCubit>()),
                  BlocProvider(create: (context) => sl<AdminProductBloc>()),
                  BlocProvider(create: (context) => sl<AdminCategoriesBloc>()..add(const AdminCategoriesEvent.fetchAdminCategories())),
                ], child:   const CreateProductBottomSheetWidget()));
          },
          text: 'Add',
          width: 90.w,
          height: 35.h,
          backgroundColor: context.colors.bluePinkDark,
          lastRadius: 10,
          threeRadius: 10,
        ),
      ],
    );
  }
}
