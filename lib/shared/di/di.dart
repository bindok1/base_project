import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project_flutter/shared/di/di.config.dart';


final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDepedencies() async {
  getIt.init();
  getIt.allowReassignment = true;
}