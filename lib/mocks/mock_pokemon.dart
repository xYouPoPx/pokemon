import '../models/pokemon.dart';
import '../models/pokemon_info.dart';
import '../models/sprites.dart';

class MockPokemon extends Pokemon {
  static final List<Pokemon> items = [
    Pokemon(
      id: 1,
      name: 'balbasaur',
      url: 'https://pokeapi.co/api/v2/pokemon/1/',
      infos: PokemonInfo(height: 7, baseExperience: 64, sprites: <Sprites>[
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
    ),
    Pokemon(
      id: 2,
      name: 'ivysaur',
      url: 'https://pokeapi.co/api/v2/pokemon/2/',
      infos: PokemonInfo(height: 10, baseExperience: 142, sprites: <Sprites>[
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
    ),
    Pokemon(
      id: 3,
      name: 'venusaur',
      url: 'https://pokeapi.co/api/v2/pokemon/3/',
      infos: PokemonInfo(height: 20, baseExperience: 236, sprites: <Sprites>[
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
    ),
    Pokemon(
      id: 4,
      name: 'charmander',
      url: 'https://pokeapi.co/api/v2/pokemon/4/',
      infos: PokemonInfo(height: 20, baseExperience: 236, sprites: <Sprites>[
        Sprites(
          name: 'back_default',
          url:
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/4.png',
        ),
        Sprites(
          name: 'front_default',
          url:
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png',
        ),
      ]),
    ),
    Pokemon(
      id: 5,
      name: 'charmeleon',
      url: 'https://pokeapi.co/api/v2/pokemon/5/',
      infos: PokemonInfo(height: 20, baseExperience: 236, sprites: <Sprites>[
        Sprites(
          name: 'back_default',
          url:
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/5.png',
        ),
        Sprites(
          name: 'front_default',
          url:
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/5.png',
        ),
      ]),
    ),
    Pokemon(
      id: 6,
      name: 'charizard',
      url: 'https://pokeapi.co/api/v2/pokemon/6/',
      infos: PokemonInfo(height: 20, baseExperience: 236, sprites: <Sprites>[
        Sprites(
          name: 'back_default',
          url:
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/6.png',
        ),
        Sprites(
          name: 'front_default',
          url:
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png',
        ),
      ]),
    ),
    Pokemon(
      id: 7,
      name: 'squirtle',
      url: 'https://pokeapi.co/api/v2/pokemon/7/',
      infos: PokemonInfo(height: 20, baseExperience: 236, sprites: <Sprites>[
        Sprites(
          name: 'back_default',
          url:
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/7.png',
        ),
        Sprites(
          name: 'front_default',
          url:
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png',
        ),
      ]),
    ),
    Pokemon(
      id: 8,
      name: 'wartortle',
      url: 'https://pokeapi.co/api/v2/pokemon/8/',
      infos: PokemonInfo(height: 20, baseExperience: 236, sprites: <Sprites>[
        Sprites(
          name: 'back_default',
          url:
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/8.png',
        ),
        Sprites(
          name: 'front_default',
          url:
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/8.png',
        ),
      ]),
    ),
    Pokemon(
      id: 9,
      name: 'blastoise',
      url: 'https://pokeapi.co/api/v2/pokemon/9/',
      infos: PokemonInfo(height: 20, baseExperience: 236, sprites: <Sprites>[
        Sprites(
          name: 'back_default',
          url:
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/9.png',
        ),
        Sprites(
          name: 'front_default',
          url:
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png',
        ),
      ]),
    ),
  ];

  static Pokemon fetchAny() {
    return MockPokemon.items[0];
  }

  static List<Pokemon> fetchAll() {
    return MockPokemon.items;
  }
}
