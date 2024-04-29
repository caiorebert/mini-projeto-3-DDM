import 'package:mobx/mobx.dart';

import '../../models/place.dart';

part 'favorite_store.g.dart';

class FavoriteStore = FavoriteStoreBase with _$FavoriteStore;

abstract class FavoriteStoreBase with Store {

  @observable
  List<Place> favoritePlaces = ObservableList();

  @observable
  int counter = 0;

  Future<void> increment() async {
    counter = counter + 1;
  }
}