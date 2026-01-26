import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/features/auth/domain/entities/auth_provider_type.dart';
import 'package:shoply/features/auth/domain/entities/auth_user.dart';
import 'package:shoply/features/auth/domain/repositories/auth_repository.dart';

@injectable
class SignInWithFacebookCaseDart {
  final AuthRepository _authRepository;
  SignInWithFacebookCaseDart(this._authRepository);
  Future<DataResult<AuthUser>> call() async {
    final response = await _authRepository.signIn(AuthProviderType.facebook);
    return response;
  }
}
