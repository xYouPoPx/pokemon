import '../models/pokemon.dart';
import '../models/pokemon_info.dart';
import '../models/sprites.dart';

class MockPokemon extends Pokemon {
  static final List<Pokemon> items = [
    Pokemon(
        id: 1,
        name: 'balbasaur',
        url: 'https://pokeapi.co/api/v2/pokemon/1/',
        infos: <PokemonInfo>[
          PokemonInfo(height: 7, baseExperience: 64, sprites: <Sprites>[
            Sprites(
              name: 'back_default',
              url:
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/1.png',
            ),
            Sprites(
              name: 'front_default',
              url:
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png',
            ),
          ]),
        ]),
    Pokemon(
        id: 2,
        name: 'ivysaur',
        url: 'https://pokeapi.co/api/v2/pokemon/2/',
        infos: <PokemonInfo>[
          PokemonInfo(height: 10, baseExperience: 142, sprites: <Sprites>[
            Sprites(
              name: 'back_default',
              url:
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/2.png',
            ),
            Sprites(
              name: 'front_default',
              url:
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png',
            ),
          ]),
        ]),
    Pokemon(
        id: 3,
        name: 'venusaur',
        url: 'https://pokeapi.co/api/v2/pokemon/3/',
        infos: <PokemonInfo>[
          PokemonInfo(height: 20, baseExperience: 236, sprites: <Sprites>[
            Sprites(
              name: 'back_default',
              url:
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/3.png',
            ),
            Sprites(
              name: 'front_default',
              url:
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png',
            ),
          ]),
        ]),
  ];

  static Pokemon fetchAny() {
    return MockPokemon.items[0];
  }

  static List<Pokemon> fetchAll() {
    return MockPokemon.items;
  }
}
