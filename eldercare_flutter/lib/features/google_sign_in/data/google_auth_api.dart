import 'package:eldercare_client/eldercare_client.dart';
import 'package:serverpod_auth_google_flutter/serverpod_auth_google_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

var client = Client('http://localhost:8080/',
    authenticationKeyManager: FlutterAuthenticationKeyManager())
  ..connectivityMonitor = FlutterConnectivityMonitor();


var sessionManager = SessionManager(caller: client.modules.auth);