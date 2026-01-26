import 'package:equatable/equatable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';

abstract class UseCase<Type, Params> {
  Future<DataResult<Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
