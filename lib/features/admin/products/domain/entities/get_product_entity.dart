import 'package:equatable/equatable.dart';

class GetProductEntity extends Equatable {
  final String id;
  final String title;
  final int price;
  final String description;
  final List<String> images;
  final CategoryProductEntity category;

  const GetProductEntity({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.images,
    required this.category,
  });

  @override
  List<Object> get props => [id, title, price, description, images, category];
}

class CategoryProductEntity extends Equatable {
  final String id;
  final String name;

  const CategoryProductEntity({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id, name];
}
