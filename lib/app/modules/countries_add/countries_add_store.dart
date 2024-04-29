import 'package:mobx/mobx.dart';

part 'countries_add_store.g.dart';

class CountriesAddStore = CountriesAddStoreBase with _$CountriesAddStore;

abstract class CountriesAddStoreBase with Store {
  @observable
  int counter = 0;

  Future<void> increment() async {
    counter = counter + 1;
  }
}