import 'package:shopping_app/feature/authentication/data/data_source/auth_data_source.dart';
import 'package:shopping_app/feature/authentication/domain/model/user.dart';
import 'package:shopping_app/feature/authentication/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource authDS;
  AuthRepositoryImpl({required this.authDS});


  @override
  Future<bool> forgotPassword(String email) async {
    final response = await authDS.forgotPassword({'email': email});
    return response.success;
  }


  @override
  Future<bool> isRegistered() async {
    final response = await authDS.isRegistered();
    return response.success;
  }

  @override
  Future<bool> resetPassword(String password, String email) async {
    final response = await authDS.resetPassword({'email': email, 'password': password});
    return response.success;
  }

  @override
  Future<bool> signIn(String email, String password) async {
    final response = await authDS.signIn({'email': email, 'password': password});
    return response.success;
  }

  @override
  Future<bool> signUp(User user) async {
    final response = await authDS.signUp(user.toJson());
    return response.success;
  }
}