import 'package:injectable/injectable.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/features/auth/domain/entities/auth_provider_type.dart';
import 'package:shoply/features/auth/domain/entities/auth_user.dart';
import 'package:shoply/features/auth/domain/repositories/auth_repository.dart';

@injectable
class SignInWithGmailCaseDart {
  final AuthRepository _authRepository;
  SignInWithGmailCaseDart(this._authRepository);
  Future<DataResult<AuthUser>> call() async {
    final response = await _authRepository.signIn(AuthProviderType.google);
    return response;
  }

}
