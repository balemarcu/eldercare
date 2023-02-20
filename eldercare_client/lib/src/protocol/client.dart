/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:eldercare_client/src/protocol/house_class.dart' as _i3;
import 'package:serverpod_auth_client/module.dart' as _i4;
import 'dart:io' as _i5;
import 'protocol.dart' as _i6;

class _EndpointElder extends _i1.EndpointRef {
  _EndpointElder(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'elder';
}

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class _EndpointHouse extends _i1.EndpointRef {
  _EndpointHouse(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'house';

  _i2.Future<_i3.House?> getHouse(int id) =>
      caller.callServerEndpoint<_i3.House?>(
        'house',
        'getHouse',
        {'id': id},
      );

  _i2.Future<List<_i3.House>> getHouses() =>
      caller.callServerEndpoint<List<_i3.House>>(
        'house',
        'getHouses',
        {},
      );

  _i2.Future<bool> addHouse(_i3.House house) => caller.callServerEndpoint<bool>(
        'house',
        'addHouse',
        {'house': house},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i4.Caller(client);
  }

  late final _i4.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i5.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i6.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    elder = _EndpointElder(this);
    example = _EndpointExample(this);
    house = _EndpointHouse(this);
    modules = _Modules(this);
  }

  late final _EndpointElder elder;

  late final _EndpointExample example;

  late final _EndpointHouse house;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'elder': elder,
        'example': example,
        'house': house,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
