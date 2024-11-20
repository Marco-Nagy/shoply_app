import 'package:equatable/equatable.dart';

class UpdateProductEntity extends Equatable {
  final String? id;
  final String? title;
  final int? price;
  final String? description;
  final double? categoryId;
  final List<String>? images;

  const UpdateProductEntity({
    this.id,
    this.title,
    this.price,
    this.description,
    this.categoryId,
    this.images,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    id,
    title,
    price,
    description,
    categoryId,
    images,
  ];
}
