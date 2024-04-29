// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_detail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PlaceDetailStore on PlaceDetailStoreBase, Store {
  late final _$favoritePlacesAtom =
      Atom(name: 'PlaceDetailStoreBase.favoritePlaces', context: context);

  @override
  List<Place> get favoritePlaces {
    _$favoritePlacesAtom.reportRead();
    return super.favoritePlaces;
  }

  @override
  set favoritePlaces(List<Place> value) {
    _$favoritePlacesAtom.reportWrite(value, super.favoritePlaces, () {
      super.favoritePlaces = value;
    });
  }

  late final _$PlaceDetailStoreBaseActionController =
      ActionController(name: 'PlaceDetailStoreBase', context: context);

  @override
  dynamic setFavoritePlaces(List<Place> list) {
    final _$actionInfo = _$PlaceDetailStoreBaseActionController.startAction(
        name: 'PlaceDetailStoreBase.setFavoritePlaces');
    try {
      return super.setFavoritePlaces(list);
    } finally {
      _$PlaceDetailStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic toggleFavorite(Place p) {
    final _$actionInfo = _$PlaceDetailStoreBaseActionController.startAction(
        name: 'PlaceDetailStoreBase.toggleFavorite');
    try {
      return super.toggleFavorite(p);
    } finally {
      _$PlaceDetailStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
favoritePlaces: ${favoritePlaces}
    ''';
  }
}
