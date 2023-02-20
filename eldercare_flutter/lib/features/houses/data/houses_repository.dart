import 'package:eldercare_client/eldercare_client.dart';
import 'package:eldercare_flutter/features/houses/data/houses_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'houses_repository.g.dart';

@riverpod
class HousesRepository extends _$HousesRepository {
  final HousesApi housesApi = HousesApi();

  @override
  FutureOr<List<House>> build() async {
    // Load initial todo list from the remote repository
    return _getHouses();
  }

  Future<List<House>> _getHouses() async {
    return await housesApi.getHouses();
  }

  Future<void> addHouseTest() async {
    // Set the state to loading
    state = const AsyncValue.loading();
    // Add the new todo and reload the todo list from the remote repository
    state = await AsyncValue.guard(() async {
      await housesApi.addHouse();
      return _getHouses();
    });
  }
}
