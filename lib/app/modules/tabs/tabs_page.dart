import 'package:f03_lugares/app/models/place.dart';
import 'package:f03_lugares/app/modules/countries/countries_module.dart';
import 'package:f03_lugares/app/modules/favorite/favorite_store.dart';
import 'package:f03_lugares/app/modules/tabs/tabs_store.dart';
import 'package:flutter/material.dart';

import 'package:f03_lugares/app/components/main_drawer.dart';
import 'package:f03_lugares/app/modules/countries/countries_page.dart';
import 'package:f03_lugares/app/modules/favorite/favorite_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TabsPage extends StatefulWidget {
  late List<Place>? favoritePlaces;
  TabsPage(this.favoritePlaces);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

  late final TabsStore store;

  int _indexSelectedPage = 0;

  late List<Widget> _screens;
  final List<String> _titles = [
    'Lista de Categorias',
    'Meus Favoritos',
  ];

  @override
  void initState() {
    super.initState();
    store = Modular.get<TabsStore>();

    if (widget.favoritePlaces != null) {
      _screens = [CountriesPage(widget.favoritePlaces!), FavoritePage(widget.favoritePlaces)];
    } else {
      _screens = [CountriesPage([]), FavoritePage([])];
    }
  }

  _selectPage(int index) {
    setState(() {
      _indexSelectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _titles[_indexSelectedPage],
        ),
      ),
      body: _screens[_indexSelectedPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.white,
        currentIndex: _indexSelectedPage,
        backgroundColor: Theme.of(context).colorScheme.primary,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Países'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favoritos'),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
