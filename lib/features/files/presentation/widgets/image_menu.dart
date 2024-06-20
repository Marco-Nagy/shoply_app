import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/styles/fonts/my_fonts.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';

class ImageMenu extends StatefulWidget {
  const ImageMenu({super.key, required this.child});

  final Widget child;

  @override
  State<ImageMenu> createState() => _ImageMenuState();
}

class _ImageMenuState extends State<ImageMenu> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FileCubit, FileState<dynamic>>(
      builder: (context, state) {
        return Listener(
          onPointerDown: (PointerDownEvent event) async {
            if (event.kind == PointerDeviceKind.touch ) {
              final overlay =
              Overlay.of(context).context.findRenderObject()! as RenderBox;
              await showMenu(
                color: context.colors.navBarbg,

                shadowColor: context.colors.bluePinkLight,
                popUpAnimationStyle: AnimationStyle(curve: Curves.easeInCirc),
                context: context,
                elevation: 11,
                items: [
                  PopupMenuItem(
                    onTap: () async {
                      await context.read<FileCubit>().uploadFile(isOpenCam: true);
                    },
                    enabled: true,
                    height: 38,

                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
            context.translate(LangKeys.camera),
                          style: MyFonts.styleSemiBold600_14.copyWith(
                            color: context.colors.textColor,
                          ),
                        ),
                        FaIcon(FontAwesomeIcons.cameraRetro,color: context.colors.textColor,)

                      ],
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () async {
                      await context.read<FileCubit>().uploadFile( );
                    },
                    height: 38,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Text(
                          context.translate(LangKeys.gallery),
                          style: MyFonts.styleSemiBold600_14.copyWith(
                            color: context.colors.textColor,
                          ),
                        ),
                        FaIcon(FontAwesomeIcons.photoFilm,color: context.colors.textColor,)

                      ],
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () async {
                       context.read<FileCubit>().removeImage();
                    },
                    height: 38,

                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Text(
            context.translate(LangKeys.remove),
                          style: MyFonts.styleSemiBold600_14.copyWith(
                            color: context.colors.textColor,
                          ),
                        ),
                        horizontalSpacing(5.5),
                        FaIcon(FontAwesomeIcons.trash,color: context.colors.textColor,)

                      ],
                    ),
                  ),
                ],
                position: RelativeRect.fromSize(
                    event.position & const Size(0, 38.0), overlay.size,),
              );
            }
          },
          child: widget.child,
        );
      },
    );
  }
}
