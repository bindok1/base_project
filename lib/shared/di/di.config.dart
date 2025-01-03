// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:base_project_flutter/core/constant/core_module.dart' as _i472;
import 'package:base_project_flutter/core/environtment/environtment.dart'
    as _i637;
import 'package:base_project_flutter/shared/config/http/http_util.dart' as _i57;
import 'package:flutter/material.dart' as _i409;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final coreModule = _$CoreModule();
    gh.singleton<_i409.GlobalKey<_i409.NavigatorState>>(
        () => coreModule.navigatorKey);
    gh.lazySingleton<_i637.Environment>(() => _i637.Environment());
    gh.lazySingleton<_i558.FlutterSecureStorage>(() => coreModule.storage);
    gh.lazySingleton<_i57.HttpProvider>(() => _i57.HttpProvider());
    return this;
  }
}

class _$CoreModule extends _i472.CoreModule {}
