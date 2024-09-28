import 'package:equatable/equatable.dart';

class DeleteProductEntity extends Equatable{
  final bool? isDeleted;
  const DeleteProductEntity({
    this.isDeleted,
  });
  @override
  List<Object?> get props =>[ isDeleted];


}
