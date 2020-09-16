import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'models/pokemon.dart';

import 'pokemon_detail.dart';

class PokemonList extends StatefulWidget {
  final List<Pokemon> pokemons;

  PokemonList(this.pokemons);
  @override
  _MyPokemonListState createState() => _MyPokemonListState(this.pokemons);
}

class _MyPokemonListState extends State<PokemonList> {
  final List<Pokemon> pokemons;

  _MyPokemonListState(this.pokemons);

  final Set<Pokemon> _saved = new Set<Pokemon>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Pokemons',
        )),
        body: ListView.builder(
          itemCount: this.pokemons.length,
          itemBuilder: _listViewItemBuilder,
        ));
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var pokemon = this.pokemons[index];
    final alreadySaved = _saved.contains(pokemon);

    return ListTile(
      contentPadding: EdgeInsets.all(10),
      leading: _itemThumbnail(this.pokemons[index]),
      title: _itemTitle(this.pokemons[index]),
      onTap: () => _navigateToPokemonDetail(context, pokemon),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onLongPress: () {
        setState(() {
          if (alreadySaved) {
            print('alreaDySaved - remove');
            _saved.remove(pokemon);
          } else {
            print('not saved - add');
            _saved.add(pokemon);
          }
        });
      },
    );
  }

  void _navigateToPokemonDetail(BuildContext context, Pokemon pokemon) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PokemonDetail(pokemon),
        ));
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
