import 'package:base_project_flutter/features/features_name/domain/entities/user_entities.dart';
import 'package:dartz/dartz.dart';
import 'package:base_project_flutter/core/error/failures.dart';


abstract class AuthRepository {
  Future<Either<Failure, User>> signIn(String email, String password);
}