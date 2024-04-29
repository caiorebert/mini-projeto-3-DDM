import 'package:f03_lugares/app/models/place.dart';
import 'package:f03_lugares/app/modules/countries/countries_module.dart';
import 'package:f03_lugares/app/modules/countries_add/countries_add_module.dart';
import 'package:f03_lugares/app/modules/countries_place/countries_place_module.dart';
import 'package:f03_lugares/app/modules/place_detail/place_detail_module.dart';
import 'package:f03_lugares/app/modules/settings/settings_module.dart';
import 'package:f03_lugares/app/modules/tabs/tabs_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

import 'utils/app_routes.dart';

class AppModule extends Module {

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(AppRoutes.HOME, module: TabsModule()),
    ModuleRoute(AppRoutes.PLACES_DETAIL, module: PlaceDetailModule()),
    ModuleRoute(AppRoutes.COUNTRY_ADD, module: CountriesAddModule()),
    ModuleRoute(AppRoutes.COUNTRY_PLACES, module: CountriesPlaceModule()),
    ModuleRoute(AppRoutes.SETTINGS, module: SettingsModule()),
  ];

}