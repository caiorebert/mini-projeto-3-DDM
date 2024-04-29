// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabs_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TabsStore on TabsStoreBase, Store {
  late final _$_favoritePlacesAtom =
      Atom(name: 'TabsStoreBase._favoritePlaces', context: context);

  @override
  List<Place> get _favoritePlaces {
    _$_favoritePlacesAtom.reportRead();
    return super._favoritePlaces;
  }

  @override
  set _favoritePlaces(List<Place> value) {
    _$_favoritePlacesAtom.reportWrite(value, super._favoritePlaces, () {
      super._favoritePlaces = value;
    });
  }

  late final _$counterAtom =
      Atom(name: 'TabsStoreBase.counter', context: context);

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$TabsStoreBaseActionController =
      ActionController(name: 'TabsStoreBase', context: context);

  @override
  dynamic getFavoritePlaces() {
    final _$actionInfo = _$TabsStoreBaseActionController.startAction(
        name: 'TabsStoreBase.getFavoritePlaces');
    try {
      return super.getFavoritePlaces();
    } finally {
      _$TabsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFavoritePlaces(List<Place> list) {
    final _$actionInfo = _$TabsStoreBaseActionController.startAction(
        name: 'TabsStoreBase.setFavoritePlaces');
    try {
      return super.setFavoritePlaces(list);
    } finally {
      _$TabsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter}
    ''';
  }
}
