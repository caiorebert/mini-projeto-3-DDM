import 'package:flutter_modular/flutter_modular.dart';
import 'tabs_store.dart';

import 'tabs_page.dart';
 
class TabsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TabsStore()),
  ];

 @override
 final List<ModularRoute> routes = [
   ChildRoute(Modular.initialRoute, child: (_, args) => (args.data != null) ? TabsPage(args.data["favoritePlaces"]) : TabsPage([])),
 ];
}