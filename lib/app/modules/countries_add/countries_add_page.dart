import 'package:f03_lugares/app/components/place_item.dart';
import 'package:f03_lugares/app/data/my_data.dart';
import 'package:f03_lugares/app/models/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../models/place.dart';
import '../../utils/app_routes.dart';
import 'countries_add_store.dart';

class CountriesAddPage extends StatefulWidget {
  CountriesAddPage();

  @override
  _CountriesAddPage createState() => _CountriesAddPage();
}

class _CountriesAddPage extends State<CountriesAddPage> {

  late final CountriesAddStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<CountriesAddStore>();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            //Navigator.pushNamed(context, AppRoutes.HOME, arguments: {"favoritePlaces": widget.favoritePlaces});
          },
        ),
        title: Text("Cadastro de País"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: null,
      ),
    );
  }
}
