import 'package:eldercare_client/eldercare_client.dart';
import 'package:injectable/injectable.dart';
import 'package:serverpod_auth_google_flutter/serverpod_auth_google_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

@module
abstract class NetworkModule {
  //NetworkModule._();

  // static Future<void> setupClient() async {
  //   var client = Client('http://localhost:8080/',
  //   authenticationKeyManager: FlutterAuthenticationKeyManager())
  // ..connectivityMonitor = FlutterConnectivityMonitor();
  // }

  @lazySingleton
  Client get client => Client('http://localhost:8080/',
      authenticationKeyManager: FlutterAuthenticationKeyManager())
    ..connectivityMonitor = FlutterConnectivityMonitor();

}
