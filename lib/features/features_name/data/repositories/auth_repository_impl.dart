   import 'dart:convert';

import 'package:base_project_flutter/core/error/exceptions.dart';
import 'package:base_project_flutter/core/error/failures.dart';
import 'package:base_project_flutter/features/features_name/data/datasources/auth_local_data_source.dart';
import 'package:base_project_flutter/features/features_name/data/datasources/auth_remote_data_source.dart';
import 'package:base_project_flutter/features/features_name/data/models/user_model.dart';

import 'package:base_project_flutter/features/features_name/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

   class AuthRepositoryImpl implements AuthRepository {
     final AuthRemoteDataSource remoteDataSource;
     final AuthLocalDataSource localDataSource;

     AuthRepositoryImpl({
       required this.remoteDataSource,
       required this.localDataSource,
     });

     @override
     Future<Either<Failure, UserModel>> signIn(String email, String password) async {
       try {
         final userModel = await remoteDataSource.signIn(email, password);
         // Simpan data pengguna ke local data source
         await localDataSource.cacheUserData(json.encode(userModel.toJson()));
         return Right(userModel);
       } on ServerException {
         return Left(ServerFailure());
       }
     }

     Future<Either<Failure, UserModel>> getCachedUser() async {
       try {
         final cachedUserData = await localDataSource.getCachedUserData();
         if (cachedUserData != null) {
           final userModel = UserModel.fromJson(json.decode(cachedUserData));
           return Right(userModel);
         } else {
           return Left(CacheFailure());
         }
       } catch (e) {
         return Left(CacheFailure());
       }
     }
   }