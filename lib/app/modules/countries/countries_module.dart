import 'package:flutter_modular/flutter_modular.dart';
import 'countries_page.dart';

import 'countries_store.dart';
 
class CountriesModule extends Module {
  @override
  final List<Bind> binds = [
 Bind.lazySingleton((i) => CountriesStore()),
 ];

 @override
 final List<ModularRoute> routes = [
   ChildRoute(Modular.initialRoute, child: (_, args) => CountriesPage(args.data)),
 ];
}