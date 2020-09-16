import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'models/pokemon.dart';

class PokemonList extends StatelessWidget {
  final List<Pokemon> pokemons;

  PokemonList(this.pokemons);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Pokemons',
      )),
      body: ListView.builder(
        itemCount: this.pokemons.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: _itemThumbnail(this.pokemons[index]),
            title: _itemTitle(this.pokemons[index]),
          );
        },
      ),
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

  Widget _itemTitle(Pokemon pok) {
    return Text(
      pok.name,
      //style: Styles.textDefault,
    );
  }
}
