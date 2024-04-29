import 'package:f03_lugares/app/models/place.dart';
import 'package:f03_lugares/app/modules/favorite/favorite_store.dart';
import 'package:f03_lugares/app/modules/place_detail/place_detail_store.dart';
import 'package:f03_lugares/app/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../models/country.dart';

class PlaceDetailPage extends StatefulWidget {
  final Place place;
  List<Place> favoritePlaces;
  late Country? country;
  PlaceDetailPage(this.place, this.favoritePlaces, this.country, {super.key});

  @override
  _PlaceDetailPageState createState() => _PlaceDetailPageState();
}


class _PlaceDetailPageState extends State<PlaceDetailPage> {

  late final PlaceDetailStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<PlaceDetailStore>();
    //store.favoritePlaces.add(widget.place);
  }

  @override
  Widget build(BuildContext context) {
    final place = widget.place;

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            if (widget.country==null) {
              Navigator.pushNamed(context, AppRoutes.HOME, arguments: {"favoritePlaces": store.getFavoritePlaces()});
            } else {
              Navigator.pushNamed(context, AppRoutes.COUNTRY_PLACES, arguments: {"favoritePlaces": store.getFavoritePlaces(), "country": widget.country});
            }
          },
        ),
        title: Text(place.titulo),
      ),
      /*
      body: Center(
        child: Text('Detalhes da Lugar!'),
      ),*/
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              place.imagemUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Dicas',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Container(
            width: 300,
            height: 250,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: ListView.builder(
                itemCount: place.recomendacoes.length,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary,
                          child: Text('${index + 1}'),
                        ),
                        title: Text(place.recomendacoes[index]),
                        subtitle: Text(place.titulo),
                        onTap: () {
                          print(place.recomendacoes[index]);
                        },
                      ),
                      Divider(),
                    ],
                  );
                }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.toggleFavorite(place);
        },
        child: Observer(
          builder: (_) {
            return store.isFavorite(place) ? Icon(Icons.star) : Icon(Icons.star_border);
          }
        )
      ),
    );
  }
}
