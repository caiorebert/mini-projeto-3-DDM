import 'package:flutter_modular/flutter_modular.dart';
import 'place_detail_store.dart'; 

import 'place_detail_page.dart';
 
class PlaceDetailModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PlaceDetailStore()),
  ];

 @override
 final List<ModularRoute> routes = [
   ChildRoute(Modular.initialRoute, child: (_, args) => PlaceDetailPage(args.data["place"], args.data["favoritePlaces"], args.data["country"])),
 ];
}