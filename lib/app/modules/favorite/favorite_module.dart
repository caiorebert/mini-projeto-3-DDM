import 'package:flutter_modular/flutter_modular.dart';
import 'favorite_store.dart'; 

import 'favorite_page.dart';
 
class FavoriteModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => FavoriteStore()),
  ];

 @override
 final List<ModularRoute> routes = [
   ChildRoute(Modular.initialRoute, child: (_, args) => FavoritePage(args.data["favoritePlaces"])),
 ];
}