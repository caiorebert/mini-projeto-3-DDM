import 'package:f03_lugares/app/models/country.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../models/place.dart';
import 'countries_places_store.dart';

import 'countries_places_page.dart';
 
class CountriesPlaceModule extends Module {

  @override
  final List<Bind> binds = [
 Bind.lazySingleton((i) => CountriesPlacesStore()),
 ];

 @override
 final List<ModularRoute> routes = [
   ChildRoute(Modular.initialRoute, child: (_, args) => CountriesPlacesPage(args.data["country"], args.data["favoritePlaces"])),
 ];
}