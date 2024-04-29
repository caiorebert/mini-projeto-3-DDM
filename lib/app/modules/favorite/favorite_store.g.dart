// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FavoriteStore on FavoriteStoreBase, Store {
  late final _$favoritePlacesAtom =
      Atom(name: 'FavoriteStoreBase.favoritePlaces', context: context);

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

  late final _$counterAtom =
      Atom(name: 'FavoriteStoreBase.counter', context: context);

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

  @override
  String toString() {
    return '''
favoritePlaces: ${favoritePlaces},
counter: ${counter}
    ''';
  }
}
