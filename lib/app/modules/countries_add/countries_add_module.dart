import 'package:f03_lugares/app/models/country.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../models/place.dart';
import 'countries_add_store.dart';

import 'countries_add_page.dart';
 
class CountriesAddModule extends Module {

  @override
  final List<Bind> binds = [
 Bind.lazySingleton((i) => CountriesAddStore()),
 ];

 @override
 final List<ModularRoute> routes = [
   ChildRoute(Modular.initialRoute, child: (_, args) => CountriesAddPage()),
 ];
}