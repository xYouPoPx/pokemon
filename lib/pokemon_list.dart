import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pokemon/favorites_list.dart';
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

  final List<Pokemon> _saved = new List<Pokemon>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Pokemons',
          ),
          actions: <Widget>[
            // Add 3 lines from here...
            new IconButton(
                icon: const Icon(Icons.list),
                //onPressed: () => print('test'),
                onPressed: () => _navigateToFavoriteList(context, _saved)),
          ],
        ),
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
            print(alreadySaved);
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

  void _navigateToFavoriteList(BuildContext context, List<Pokemon> favList) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FavoriteList(favList),
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
