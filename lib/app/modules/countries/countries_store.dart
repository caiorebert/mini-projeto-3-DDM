import 'package:mobx/mobx.dart';

part 'countries_store.g.dart';

class CountriesStore = CountriesStoreBase with _$CountriesStore;

abstract class CountriesStoreBase with Store {
  @observable
  int counter = 0;

  Future<void> increment() async {
    counter = counter + 1;
  }
}