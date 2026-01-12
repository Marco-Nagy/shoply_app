
import 'package:injectable/injectable.dart';
import 'package:shoply/features/auth/data/repositories/auth_repository.dart';
import 'package:shoply/features/auth/domain/entities/auth_provider_type.dart';
import 'package:shoply/features/auth/domain/entities/auth_user.dart';

@injectable
class SignInUseCase {
  final AuthRepository _authRepository;
  SignInUseCase(this._authRepository);

  Future<AuthUser> call(AuthProviderType provider) async {
    switch (provider) {

      case AuthProviderType.email:
        // TODO: Handle this case.
        throw UnimplementedError();
      case AuthProviderType.google:
        // TODO: Handle this case.
        throw UnimplementedError();
      case AuthProviderType.facebook:
        // TODO: Handle this case.
        throw UnimplementedError();
    }


  }

}
