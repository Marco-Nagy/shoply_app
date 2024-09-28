import 'package:equatable/equatable.dart';

class CreateProductEntity extends Equatable {
  final String title;
  final double price;
  final String description;
  final String categoryId;
  final List<String> images;

  const CreateProductEntity({
    required this.title,
    required this.price,
    required this.description,
    required this.categoryId,
    required this.images,
  });

  @override
  List<Object?> get props => [
        title,
        price,
        description,
        categoryId,
        images,
      ];
}
