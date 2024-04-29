import 'package:f03_lugares/app/components/place_item.dart';
import 'package:f03_lugares/app/data/my_data.dart';
import 'package:f03_lugares/app/models/place.dart';
import 'package:flutter/material.dart';

import '../../models/country.dart';

class FavoritePage extends StatelessWidget {
  List<Place>? favoritePlaces;

  FavoritePage(this.favoritePlaces);

  @override
  Widget build(BuildContext context) {
    if (favoritePlaces != null) {
      if (favoritePlaces!.isEmpty) {
        return const Center(
          child: Text('Nenhum Lugar Marcado como Favorito!', style: TextStyle(fontSize: 20),),
        );
      } else {
        return ListView.builder(
            itemCount: favoritePlaces!.length,
            itemBuilder: (ctx, index) {
              return PlaceItem(favoritePlaces![index], favoritePlaces!, null);
            });
      }
    } else {
      return Scaffold();
    }
  }
}
