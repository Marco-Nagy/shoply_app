import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoply/core/app/di/injection_container.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/routes/base_routes.dart';
import 'package:shoply/core/styles/app_images.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/widgets/images/custom_image.dart';
import 'package:shoply/core/utils/widgets/images/hero_photo_view.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';
import 'package:shoply/features/files/presentation/widgets/image_menu.dart';

class UserAvatarImage extends StatefulWidget {
  const UserAvatarImage({super.key});

  @override
  _UserAvatarImageState createState() => _UserAvatarImageState();
}

class _UserAvatarImageState extends State<UserAvatarImage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FileCubit>();

    return CustomFadeInDown(
      duration: 400,
      child: BlocConsumer<FileCubit, FileState<dynamic>>(
        listener: (context, state) {
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () {
              return  CircleAvatar(
                radius: 50,
                backgroundImage: const AssetImage(
                  AppImages.userAvatar,

                )as ImageProvider,
            child: CircularProgressIndicator(
              color: context.colors.mainColor,
            ),
              );
            },
            orElse: () {
              return Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Padding(
                    padding:  const EdgeInsets.all(8),
                    child: cubit.getImageUrl.isEmpty
                        ?  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      AppImages.userAvatar,

                    )as ImageProvider,
                    )
                        : InkWell(
                            onTap: () {
                              if (cubit
                                  .getImageUrl
                                  .isNotEmpty) {
                                Navigator.push(
                                  context,
                                  BaseRoute(page:  BlocProvider(
                                      create: (_) => sl<FileCubit>(),
                                      child: HeroPhotoView(
                                        image:cubit.getImageUrl ,

                                      ),
                                    ),
                                  ),
                                );
                              }
                            },
                            child: CircleAvatar(
                              radius: 50,
                              child: CustomImage(imageUrl: cubit.getImageUrl, ),
                            ),
                          ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: ImageMenu(
                      child: FaIcon(
                        cubit.getImageUrl.isEmpty?FontAwesomeIcons.cameraRetro:FontAwesomeIcons.trashCan,

                        color: context.colors.bluePinkLight,

                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

}
