import 'package:mobx/mobx.dart';

import '../../models/place.dart';
import '../../data/my_data.dart';

part 'place_detail_store.g.dart';

class PlaceDetailStore = PlaceDetailStoreBase with _$PlaceDetailStore;

abstract class PlaceDetailStoreBase with Store {

  @observable
  List<Place> favoritePlaces = ObservableList();

  getFavoritePlaces(){
    return favoritePlaces;
  }

  @action
  setFavoritePlaces(List<Place> list){
    favoritePlaces = list;
  }

  @action
  toggleFavorite(Place p){
    favoritePlaces.contains(p) ?
        favoritePlaces.remove(p) : favoritePlaces.add(p);
  }

  isFavorite(Place p) {
    return favoritePlaces.contains(p);
  }
}