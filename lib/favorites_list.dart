import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'models/pokemon.dart';
import 'pokemon_detail.dart';

class FavoriteList extends StatelessWidget {
  final List<Pokemon> favList;

  FavoriteList(this.favList) {
    for (int i = 0; i < favList.length; i++) {
      print(this.favList[i].name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Favorites Pokemons',
          ),
        ),
        body: ListView.builder(
          itemCount: this.favList.length,
          itemBuilder: _listViewItemBuilder,
        ));
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var pokemon = this.favList[index];
    //final alreadySaved = _saved.contains(pokemon);

    return ListTile(
      contentPadding: EdgeInsets.all(10),
      leading: _itemThumbnail(this.favList[index]),
      title: _itemTitle(this.favList[index]),
      onTap: () => _navigateToPokemonDetail(context, pokemon),
    );
  }

  void _navigateToPokemonDetail(BuildContext context, Pokemon pokemon) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PokemonDetail(pokemon),
        ));
  }

  Widget _itemTitle(Pokemon pok) {
    return Text(
      pok.name,
      //style: Styles.textDefault,
    );
  }

  Widget _itemThumbnail(Pokemon pok) {
    return Container(
      constraints: BoxConstraints.tightFor(
        width: 100.0,
      ),
      child: Image.network(
        pok.infos.sprites[1].url,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
