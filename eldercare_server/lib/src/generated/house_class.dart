/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class House extends _i1.TableRow {
  House({
    int? id,
    required this.name,
    required this.adress,
    required this.capacity,
  }) : super(id);

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

  static final t = HouseTable();

  String name;

  String adress;

  int capacity;

  @override
  String get tableName => 'house';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'adress': adress,
      'capacity': capacity,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'adress': adress,
      'capacity': capacity,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'name': name,
      'adress': adress,
      'capacity': capacity,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'adress':
        adress = value;
        return;
      case 'capacity':
        capacity = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<House>> find(
    _i1.Session session, {
    HouseExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<House>(
      where: where != null ? where(House.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<House?> findSingleRow(
    _i1.Session session, {
    HouseExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<House>(
      where: where != null ? where(House.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<House?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<House>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required HouseExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<House>(
      where: where(House.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    House row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    House row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    House row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    HouseExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<House>(
      where: where != null ? where(House.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef HouseExpressionBuilder = _i1.Expression Function(HouseTable);

class HouseTable extends _i1.Table {
  HouseTable() : super(tableName: 'house');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final name = _i1.ColumnString('name');

  final adress = _i1.ColumnString('adress');

  final capacity = _i1.ColumnInt('capacity');

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        adress,
        capacity,
      ];
}

@Deprecated('Use HouseTable.t instead.')
HouseTable tHouse = HouseTable();
