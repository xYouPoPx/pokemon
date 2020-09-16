import 'package:pokemon/models/pokemon_info.dart';

class Pokemon {
  final int id;
  final String name;
  final String url;
  final PokemonInfo infos;

  Pokemon({this.id, this.name, this.url, this.infos});
}
