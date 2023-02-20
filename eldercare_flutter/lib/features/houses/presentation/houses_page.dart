// 1. widget class now extends [ConsumerWidget]
import 'package:eldercare_client/eldercare_client.dart';
import 'package:eldercare_flutter/features/houses/data/houses_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/houses_api.dart';

final streamProviderTest = StreamProvider<int>((ref) {
  return Stream.periodic(
      const Duration(seconds: 2), ((computationCount) => computationCount));
});

class HousesWidget extends ConsumerWidget {
  const HousesWidget({super.key});

  @override
  // 2. build method has an extra [WidgetRef] argument

  Widget build(BuildContext context, WidgetRef ref) {
    // 3. use ref.watch() to get the value of the provider
    //final housesRepo = ref.watch(housesRepositoryProvider);
    //final houses = ref.watch(futureHouseRepositoryProvider);
    //final streamData = ref.watch(streamProviderTest);

    //final housesData = ref.watch(housesDataProvider);
    //final housesDataRepoFuture = ref.watch(futureHouseRepositoryProvider);
    final AsyncValue<List<House>> asyncHouses = ref.read(housesRepositoryProvider);
    print(asyncHouses.toString());

    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
              ref.read(housesRepositoryProvider.notifier).addHouseTest();
              //ref.invalidate(futureHouseRepositoryProvider);
              }),
      appBar: AppBar(
        title: const Text('List of houses'),
      ),
      body: asyncHouses.when(
          data: (asyncHouses) => ListView.builder(
                itemBuilder: (context, index) {

                  return ListTile(
                    title: Text(asyncHouses[index].name),
                  );
                },
                itemCount: asyncHouses.length,
              ),
          //data: (data) => Text('${data!.length}'),
          error: (error, stackTrace) => Text(error.toString()),
          loading: () => const Center(child: CircularProgressIndicator())),
      // body: streamData.when(
      //     data: ((data) => Center(
      //           child: Text(
      //             data.toString(),
      //             style: const TextStyle(fontSize: 25),
      //           ),
      //         )),
      //     error: (error, stackTrace) => Text(error.toString()),
      //     loading: () => const Center(child: CircularProgressIndicator())),
    );

    // return Center(
    //   child: houses.when(
    //       data: (houses) => ListView.builder(
    //             itemBuilder: (context, index) {
    //               return ListTile(
    //                 title: Text(houses![index].name),
    //               );
    //             },
    //             itemCount: houses!.length,
    //           ),
    //       error: (error, stackTrace) => Text(error.toString()),
    //       loading: () => const CircularProgressIndicator()),
    // );
  }
}
