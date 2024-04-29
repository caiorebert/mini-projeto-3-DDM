import 'package:mobx/mobx.dart';

import '../../models/place.dart';

part 'tabs_store.g.dart';

class TabsStore = TabsStoreBase with _$TabsStore;

abstract class TabsStoreBase with Store {

  @observable
  List<Place> _favoritePlaces = ObservableList();

  @observable
  int counter = 0;

  @action
  getFavoritePlaces(){
    return _favoritePlaces;
  }

  @action
  setFavoritePlaces(List<Place> list){
    _favoritePlaces = list;
  }

  Future<void> increment() async {
    counter = counter + 1;
  }
}