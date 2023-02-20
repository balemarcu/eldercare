import 'package:eldercare_client/eldercare_client.dart';
import 'package:eldercare_flutter/features/google_sign_in/data/google_auth_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HousesApi {
  Future<List<House>> getHouses() async {
    var result = await client.house.getHouses();
    if (result.isNotEmpty) {
      return result;
    } else {
      throw Exception(result);
    }
  }

  Stream<List<House>> getHousesStream() async* {
    yield await client.house.getHouses();
  }

  Future<void> addHouse() async {
    var house = House(name: 'casa test', adress: 'Adresa', capacity: 15);
    await client.house.addHouse(house);
    //await getHouses();
  }
}

final hosesApiProvider = Provider<HousesApi>((ref) => HousesApi());
final housesDataProvider = FutureProvider((ref) async {
  return ref.read(hosesApiProvider).getHouses();
});
