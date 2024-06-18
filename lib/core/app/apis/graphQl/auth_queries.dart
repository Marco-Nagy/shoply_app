import 'package:shoply/features/auth/data/models/login/login_request.dart';

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

  Map<String, dynamic> userRoleQuery({required String id}) {
    return {
      'query':
      '''
      {
        user(id: $id){
        role
        }
      }'''
      ,

    };
  }
}
