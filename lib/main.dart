import 'package:base_project_flutter/core/constant/core_constant.dart';
import 'package:base_project_flutter/core/environtment/environtment.dart';
import 'package:base_project_flutter/shared/component/base_app.dart';



import 'package:base_project_flutter/shared/config/theme/app_theme.dart';
import 'package:base_project_flutter/shared/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDepedencies();

  FlavorConfig(
    name: CoreConstant.appProject,
    variables: {
      CoreConstant.keyBaseUrl: getIt<Environment>().getBaseUrl,
      CoreConstant.keyAppName: getIt<Environment>().getAppName,
    },
  );

  runApp(
    FlavorBanner(
      child: MaterialApp(
        title: FlavorConfig.instance.variables[CoreConstant.keyAppName],
        theme: AppTheme.lightTheme,
        home: BaseApp(),
      ),
    ),
  );
}
