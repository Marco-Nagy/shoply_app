import 'package:equatable/equatable.dart';
import 'package:shoply/core/app/Apis/api_result.dart';


abstract class UseCase<Type, Params> {
  Future<ApiResult<Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
