/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/elder_endpoint.dart' as _i2;
import '../endpoints/example_endpoint.dart' as _i3;
import '../endpoints/house_endpoint.dart' as _i4;
import 'package:eldercare_server/src/generated/house_class.dart' as _i5;
import 'package:serverpod_auth_server/module.dart' as _i6;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'elder': _i2.ElderEndpoint()
        ..initialize(
          server,
          'elder',
          null,
        ),
      'example': _i3.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'house': _i4.HouseEndpoint()
        ..initialize(
          server,
          'house',
          null,
        ),
    };
    connectors['elder'] = _i1.EndpointConnector(
      name: 'elder',
      endpoint: endpoints['elder']!,
      methodConnectors: {},
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['house'] = _i1.EndpointConnector(
      name: 'house',
      endpoint: endpoints['house']!,
      methodConnectors: {
        'getHouse': _i1.MethodConnector(
          name: 'getHouse',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['house'] as _i4.HouseEndpoint).getHouse(
            session,
            params['id'],
          ),
        ),
        'getHouses': _i1.MethodConnector(
          name: 'getHouses',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['house'] as _i4.HouseEndpoint).getHouses(session),
        ),
        'addHouse': _i1.MethodConnector(
          name: 'addHouse',
          params: {
            'house': _i1.ParameterDescription(
              name: 'house',
              type: _i1.getType<_i5.House>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['house'] as _i4.HouseEndpoint).addHouse(
            session,
            params['house'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i6.Endpoints()..initializeEndpoints(server);
  }
}
