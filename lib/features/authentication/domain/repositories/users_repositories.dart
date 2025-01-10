import 'package:admapu/features/authentication/domain/entities/user.dart';

abstract class UsersRepositories {
  Future<User> createUser(
      {required username, required email, required password});
  Future<bool> existsUsername({required username});
  Future<bool> existsemail({required email});
}