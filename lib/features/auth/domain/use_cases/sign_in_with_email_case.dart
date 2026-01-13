
import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/features/auth/data/models/login/login_request.dart';
import 'package:shoply/features/auth/domain/entities/auth_provider_type.dart';
import 'package:shoply/features/auth/domain/entities/auth_user.dart';
import 'package:shoply/features/auth/domain/repositories/auth_repository.dart';

@injectable
class SignInWithEmailCase {
  final AuthRepository _authRepository;
  SignInWithEmailCase(this._authRepository);

  Future<DataResult<AuthUser>> call(LoginRequest body) async {
    final response = await _authRepository.signIn(AuthProviderType.email, loginRequest: body);
    return response;
  }

}
