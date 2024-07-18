import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_swipe_action_cell/core/controller.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/styles/icons/dark_icons.dart';
import 'package:shoply/core/utils/widgets/custom_bottom_sheet.dart';
import 'package:shoply/core/utils/widgets/custom_dialogs.dart';
import 'package:shoply/core/utils/widgets/custom_swipe_to_action.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/features/admin/categories/presentation/widget/add_category_item.dart';
import 'package:shoply/features/admin/categories/presentation/widget/create/create_category.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';
import 'package:vibration/vibration.dart';
import 'create/create_category_bottom_sheet_widget.dart';

class AddCategoriesBody extends StatefulWidget {
  const AddCategoriesBody({super.key});

  @override
  State<AddCategoriesBody> createState() => _AddCategoriesBodyState();
}

class _AddCategoriesBodyState extends State<AddCategoriesBody>
    with SingleTickerProviderStateMixin {
  SwipeActionController? controller;
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CreateCategory(),
            verticalSpacing(8),
            Expanded(
                child: RefreshIndicator(
              onRefresh: () async {},
              color: context.colors.bluePinkLight,
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: verticalSpacing(12),
                  ),
                  SliverToBoxAdapter(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return CustomSwipeToAction(
                          index: index,
                          rightButtonBackgroundColor: Colors.redAccent,
                          animatedRightButtonAsset: AppIcons.trash,
                          animatedLiftButtonAsset: AppIcons.edit,
                          leftButtonBackgroundColor: Colors.blue,
                          onPressRightButton: () async {
                            Vibration.vibrate(
                                duration: 600, pattern: [50, 100, 50, 300]);
                            Future.delayed(const Duration(milliseconds: 600));
                            CustomDialog.twoButtonDialog(
                                context: context,
                                textBody:
                                    'Are you sure you want to delete this item?',
                                textButton1: 'Delete',
                                textButton2: 'Cancel',
                                onPressed: () {},
                                isLoading: false);
                          },
                          onPressLeftButton: () async {
                            Vibration.vibrate(
                                duration: 500, pattern: [50, 200, 50, 100]);
                            Future.delayed(const Duration(milliseconds: 500));
                            CustomBottomSheet.showModalBottomSheetWidget(
                                context: context,
                                child: MultiBlocProvider(
                                    providers: [
                                      BlocProvider(
                                          create: (context) => sl<FileCubit>()),
                                    ],
                                    child:
                                        const CreateCategoryBottomSheetWidget()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AddCategoryItem(
                              name: '$index - Category Name',
                              image: '',
                              categoryId: '',
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
