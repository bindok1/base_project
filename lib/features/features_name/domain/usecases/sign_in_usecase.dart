import 'package:dartz/dartz.dart';
import 'package:base_project_flutter/core/error/failures.dart';
import 'package:base_project_flutter/core/usecases/usecase.dart';

import '../entities/user_entities.dart';
import '../repositories/auth_repository.dart';


class SignIn implements UseCase<User, SignInParams> {
  final AuthRepository repository;

  SignIn(this.repository);

  @override
  Future<Either<Failure, User>> call(SignInParams params) async {
    return await repository.signIn(params.email, params.password);
  }
}

class SignInParams {
  final String email;
  final String password;

  SignInParams({required this.email, required this.password});
}