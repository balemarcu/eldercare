import 'package:eldercare_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class HouseEndpoint extends Endpoint {
  //TODO handling errors with try catch
  Future<House?> getHouse(Session session, int id)async{
    return await House.findById(session, id);
  }

  Future<List<House>> getHouses(Session session) async {
    return await House.find(session);
  }

  Future<bool> addHouse(Session session, House house) async {
    await House.insert(session, house);
    return true;
  }
}