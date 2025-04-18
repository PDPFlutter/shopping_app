import 'package:shopping_app/feature/authentication/domain/model/user.dart';

abstract class AuthRepository {
  Future<bool> signIn(String email, String password);
  Future<bool> signUp(User user);
  Future<bool> forgotPassword(String email);
  Future<bool> resetPassword(String password);
  Future<bool> isRegistered();
}