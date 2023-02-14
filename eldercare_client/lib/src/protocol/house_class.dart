/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class House extends _i1.SerializableEntity {
  House({
    this.id,
    required this.name,
    required this.adress,
    required this.capacity,
  });

  factory House.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return House(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      adress:
          serializationManager.deserialize<String>(jsonSerialization['adress']),
      capacity:
          serializationManager.deserialize<int>(jsonSerialization['capacity']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String adress;

  int capacity;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'adress': adress,
      'capacity': capacity,
    };
  }
}
