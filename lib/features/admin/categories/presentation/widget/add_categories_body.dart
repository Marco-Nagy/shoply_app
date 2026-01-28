import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_swipe_action_cell/core/controller.dart';
import 'package:shoply/core/app/di/injection.dart';
import 'package:shoply/core/helpers/extension/mediaQueryValues.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/helpers/extension/navigations.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/styles/icons/app_animated_icons.dart';
import 'package:shoply/core/utils/loading/empty_screen.dart';
import 'package:shoply/core/utils/widgets/custom_bottom_sheet.dart';
import 'package:shoply/core/utils/widgets/custom_dialogs.dart';
import 'package:shoply/core/utils/widgets/custom_swipe_to_action.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/core/Services/local_translator.dart';
import 'package:shoply/features/admin/categories/presentation/bloc/admin_categories_bloc.dart';
import 'package:shoply/features/admin/categories/presentation/widget/add_category_item.dart';
import 'package:shoply/features/admin/categories/presentation/widget/create/create_category.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';
import 'package:vibration/vibration.dart';

import 'add_category_loading.dart';
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
  double width = 0;
  bool myAnimation = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        setState(() {
          animationController = AnimationController(
              vsync: this, duration: const Duration(milliseconds: 300));
          width = context.width;
          myAnimation = true;
        });
      },
    );
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
                    onRefresh: () async {
                      context.read<AdminCategoriesBloc>().add(
                          const AdminCategoriesEvent.fetchFirebaseCategories());
                    },
                    color: context.colors.bluePinkLight,
                    child:
                        BlocBuilder<AdminCategoriesBloc, AdminCategoriesState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          getFirebaseCategoriesEmpty: () => const EmptyScreen(),
                          getFirebaseCategoriesFailure: (errorMessage) {
                            return AwesomeSnackbarContent(
                                title: context.translate(LangKeys.errorGeneral),
                                message: errorMessage,
                                contentType: ContentType.failure);
                          },
                          adminCategoriesLoading: () =>
                              const AddCategoryLoading(),
                          getFirebaseCategoriesSuccess: (categoriesList) {
                            return ListView.builder(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemCount: categoriesList.length,
                              itemBuilder: (context, index) {
                                final category = categoriesList[index];
                                return CustomSwipeToAction(
                                  index: index,
                                  rightButtonBackgroundColor: Colors.redAccent,
                                  animatedRightButtonAsset:
                                      AppAnimatedIcons.trash,
                                  animatedLiftButtonAsset:
                                      AppAnimatedIcons.edit,
                                  leftButtonBackgroundColor: Colors.blue,
                                  onPressRightButton: () async {
                                    Vibration.vibrate(
                                        duration: 700,
                                        pattern: [50, 100, 50, 500]);
                                    Future.delayed(
                                        const Duration(milliseconds: 700));
                                    CustomDialog.twoButtonDialog(
                                        context: context,
                                        textBody:
                                            '${context.translate(LangKeys.deleteCategoryQuestion)} ${LocalTranslator.translate(category.name)}',
                                        textButton1:
                                            context.translate(LangKeys.yes),
                                        textButton2:
                                            context.translate(LangKeys.cancel),
                                        onPressed: () async {
                                          _deleteCategory(context,
                                                  categoryId: category.id)
                                              .whenComplete(
                                            () {
                                              if (!context.mounted) return;
                                              context
                                                  .read<AdminCategoriesBloc>()
                                                  .add(const AdminCategoriesEvent
                                                      .fetchFirebaseCategories());
                                              context.pop();
                                            },
                                          );
                                        },
                                        isLoading: true);
                                  },
                                  onPressLeftButton: () async {
                                    Vibration.vibrate(
                                        duration: 500,
                                        pattern: [50, 200, 50, 100]);
                                    Future.delayed(
                                        const Duration(milliseconds: 500));
                                    CustomBottomSheet
                                        .showModalBottomSheetWidget(
                                      context: context,
                                      child: MultiBlocProvider(
                                        providers: [
                                          BlocProvider(
                                              create: (context) =>
                                                  sl<FileCubit>()),
                                          BlocProvider(
                                              create: (context) =>
                                                  sl<AdminCategoriesBloc>()),
                                        ],
                                        child: CreateCategoryBottomSheetWidget(
                                            category: category),
                                      ),
                                      whenComplete: () {
                                        context.read<AdminCategoriesBloc>().add(
                                            const AdminCategoriesEvent
                                                .fetchFirebaseCategories());
                                      },
                                    );
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(
                                        milliseconds: 400 + (index * 250)),
                                    curve: Curves.easeIn,
                                    transform: Matrix4.translationValues(
                                        myAnimation ? 0 : width, 0, 0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: AddCategoryItem(
                                        name: LocalTranslator.translate(
                                            category.name),
                                        image: category.image,
                                        categoryId: category.id,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          orElse: () => const SizedBox.shrink(),
                        );
                      },
                    ))),
          ],
        ),
      ),
    );
  }

  Future<void> _deleteCategory(BuildContext context,
      {required String categoryId}) async {
    context
        .read<AdminCategoriesBloc>()
        .add(DeleteFirebaseCategoryEvent(categoryId: categoryId));
  }
}
