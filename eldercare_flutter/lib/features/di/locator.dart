import 'package:eldercare_flutter/features/di/locator.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependecies() => getIt.init();