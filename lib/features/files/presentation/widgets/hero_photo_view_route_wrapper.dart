import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_view/photo_view.dart';
import 'package:shoply/features/files/presentation/cubit/file_cubit.dart';

// class HeroExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ExampleAppBarLayout(
//       title: "Hero",
//       showGoBack: true,
//       child: Center(
//         child: GestureDetector(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const HeroPhotoViewRouteWrapper(
//                   imageProvider: NetworkImage(
//                     "https://source.unsplash.com/4900x3600/?camera,paper",
//                   ),
//                 ),
//               ),
//             );
//           },
//           child: Container(
//             child: Hero(
//               tag: "someTag",
//               child: Image.network(
//                 "https://source.unsplash.com/4900x3600/?camera,paper",
//                 width: 350.0,
//                 loadingBuilder: (_, child, chunk) =>
//                 chunk != null ? const Text("loading") : child,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class HeroPhotoViewRouteWrapper extends StatelessWidget {
  const HeroPhotoViewRouteWrapper({required this.imageProvider, super.key,
    this.backgroundDecoration,
    this.minScale,
    this.maxScale,
  });

  final ImageProvider imageProvider;
  final BoxDecoration? backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FileCubit, FileState>(
      builder: (context, state) {
        return Container(
          constraints: BoxConstraints.expand(
            height: MediaQuery
                .of(context)
                .size
                .height,
          ),
          child: PhotoView(
            imageProvider: imageProvider,
            backgroundDecoration: backgroundDecoration,
            minScale: minScale,
            maxScale: maxScale,
            heroAttributes: const PhotoViewHeroAttributes(tag: 'someTag'),
          ),
        );
      },
    );
  }
}