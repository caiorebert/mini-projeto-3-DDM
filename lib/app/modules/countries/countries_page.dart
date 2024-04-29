import 'package:f03_lugares/app/components/country_item.dart';
import 'package:f03_lugares/app/components/main_drawer.dart';
import 'package:flutter/material.dart';
import '../../data/my_data.dart';
import '../../models/country.dart';
import '../../models/place.dart';

class CountriesPage extends StatefulWidget {
  List<Place> favoritePlaces;

  CountriesPage(this.favoritePlaces);

  @override
  _CountriesPage createState() => _CountriesPage();
}

class _CountriesPage extends State<CountriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Bora viajar?!',
          )), */
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent:
              200, //cada elemento com extenso maxima de 200 pixel
          childAspectRatio: 3 / 2, //proporcao de cada elemento dentro do grid
          crossAxisSpacing: 20, //espacamento no eixo cruzado
          mainAxisSpacing: 20, //espacamento no eixo principal
        ),
        children: DUMMY_COUNTRIES.map((country) {
          return CountryItem(widget.favoritePlaces, country);
        }).toList(),
      ),
    );
  }
}
