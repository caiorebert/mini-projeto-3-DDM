import 'package:f03_lugares/app/components/place_item.dart';
import 'package:f03_lugares/app/data/my_data.dart';
import 'package:f03_lugares/app/models/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../models/place.dart';
import '../../utils/app_routes.dart';
import 'countries_places_store.dart';

class CountriesPlacesPage extends StatefulWidget {
  Country country;
  List<Place> favoritePlaces;
  CountriesPlacesPage(this.country, this.favoritePlaces);

  @override
  _CountriesPlacesPage createState() => _CountriesPlacesPage();
}

class _CountriesPlacesPage extends State<CountriesPlacesPage> {

  late final CountriesPlacesStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<CountriesPlacesStore>();
  }

  @override
  Widget build(BuildContext context) {
    final Country country = widget.country;

    final countryPlaces = DUMMY_PLACES.where((places) {
      return places.paises.contains(country.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.HOME, arguments: {"favoritePlaces": widget.favoritePlaces});
          },
        ),
        title: Text(country.title),
      ),
      body: ListView.builder(
          itemCount: countryPlaces.length,
          itemBuilder: (ctx, index) {
            return PlaceItem(countryPlaces[index], widget.favoritePlaces, widget.country);
          }),
    );
  }
}
