import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/country.dart';
import '../models/place.dart';

class CountryItem extends StatelessWidget {
  final Country country;
  late List<Place> favoritePlaces;

  CountryItem(this.favoritePlaces, this.country);

  void _selectedCountry(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/country-places/',
      arguments: { "country": country, "favoritePlaces": favoritePlaces},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectedCountry(context),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          country.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                colors: [
                  country.color.withOpacity(0.5), //cor passad com opacidade
                  country.color, //cor passada
                ],
                begin: Alignment.topLeft, //inicio do gradiente
                end: Alignment.bottomRight // fim
                )),
      ),
    );
  }
}
