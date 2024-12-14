import 'package:equatable/equatable.dart';

class FilterProductsEntity extends Equatable {
  final int? priceMin;
  final int? priceMax;
  final String? title;


  const FilterProductsEntity(this.priceMin, this.priceMax, this.title, );

  @override
  List<Object?> get props => [priceMin,priceMax,title,];
}
