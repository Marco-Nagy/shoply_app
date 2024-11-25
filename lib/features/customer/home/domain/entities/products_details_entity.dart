import 'package:equatable/equatable.dart';

class ProductsDetailsEntity extends Equatable {
  final String id;
  final String title;
  final int price;
  final String description;
  final List<String> images;

  const ProductsDetailsEntity({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.images,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [id, title, description, images];


}
