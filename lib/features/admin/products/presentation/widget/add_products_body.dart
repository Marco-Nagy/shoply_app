import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/utils/loading/empty_screen.dart';
import 'package:shoply/features/admin/products/presentation/bloc/admin_product_bloc.dart';
import 'package:shoply/features/admin/products/presentation/widget/product_loading.dart';
import 'package:shoply/features/admin/products/presentation/widget/products_list_admin.dart';

import 'create_product.dart';

class AddProductsBody extends StatefulWidget {
  const AddProductsBody({super.key});

  @override
  State<AddProductsBody> createState() => _AddProductsBodyState();
}

class _AddProductsBodyState extends State<AddProductsBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late AnimationController animationEController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    animationEController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    animationController.dispose();
    animationEController.dispose();
    super.dispose();
  }

  ValueNotifier<bool> itemPressed = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        children: [
          //Add products button
          const CreateProduct(),
          //Get ALl Product
          Expanded(
            child: BlocBuilder<AdminProductBloc, AdminProductState>(
              builder: (context, state) {
                return state.maybeWhen(
                  getAdminProductListEmpty: () => const EmptyScreen(),
                  getAdminProductListFailure: (errorMessage) {
                    return AwesomeSnackbarContent(
                        title: 'Error',
                        message: errorMessage,
                        contentType: ContentType.failure);
                  },
                  adminProductLoading: () => const ProductLoading(),
                  getAdminProductListSuccess: (productList) {
                    return ProductsListAdmin(productList: productList! );
                  },
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

}
