import 'package:shoply/features/auth/data/models/login/login_request.dart';
import 'package:shoply/features/auth/data/models/sign_up/signup_request.dart';

class AuthQueries {
  factory AuthQueries() => _instance;

  const AuthQueries._();

  static const AuthQueries _instance = AuthQueries._();

  Map<String, dynamic> loginQuery({required LoginRequest body}) {
    return {
      'query':
      r''' 
      mutation login($email: String!,$password: String!){
        login(	email: $email, password: $password) {
          access_token
          refresh_token
        }
      }
      ''',
      'variables': {
        'email': body.email,
        'password': body.password,
      },
    };
  }

  Map<String, dynamic> signUpQuery({required SignupRequest body}) {
    return {
      'query': r'''

      mutation      SignUp(
          $name: String!,
          $email: String!,
          $password: String!,
          $avatar: String!,) {
        addUser(
            data: {
              name: $name,
              email: $email,
              password: $password,
              avatar:   $avatar,
              role: customer
            }
        ) {
          id
          email
          role
          password
        }
      }''',
      'variables': {
        'name': body.name,
        'email': body.email,
        'password': body.password,
        'avatar': body.avatar,
      }
    };
  }
}
