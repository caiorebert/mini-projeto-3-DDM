import 'package:mobx/mobx.dart';

part 'countries_places_store.g.dart';

class CountriesPlacesStore = CountriesPlacesStoreBase with _$CountriesPlacesStore;

abstract class CountriesPlacesStoreBase with Store {
  @observable
  int counter = 0;

  Future<void> increment() async {
    counter = counter + 1;
  }
}