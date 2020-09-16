import 'package:flutter/material.dart';
import 'package:pokemon/mocks/mock_pokemon.dart';

import 'package:flutter/material.dart';
import 'package:pokemon/pokemon_list.dart';

void main() {
  final mockPokemons = MockPokemon.fetchAll();
  return runApp(
    MaterialApp(
      home: PokemonList(mockPokemons),
    ),
  );
}
