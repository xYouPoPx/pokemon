import 'package:flutter/material.dart';

import 'models/pokemon.dart';
//import 'styles.dart';

class PokemonDetail extends StatelessWidget {
  final Pokemon pokemon;
  PokemonDetail(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            pokemon.name,
            //style: Styles.navBarTitle,
          ),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _renderBody(context, pokemon)));
  }

  List<Widget> _renderSprites(BuildContext context, Pokemon pokemon) {
    var result = List<Widget>();
    for (int i = 0; i < pokemon.infos.sprites.length; i++) {
      result.add(_sectionSprites(pokemon.infos.sprites[i].url, 100.0));
    }
    return result;
  }

  List<Widget> _renderInfos(BuildContext context, Pokemon pokemon) {
    var result = List<Widget>();
    result.add(_sectionTitle('Name: ${pokemon.name}'));
    result.add(_sectionText('Height: ${pokemon.infos.height.toString()}'));
    result.add(
        _sectionText('Experience: ${pokemon.infos.baseExperience.toString()}'));

    return result;
  }

  Widget _sectionTitle(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
        child: Text(
          text,
          textAlign: TextAlign.justify,
          //style: Styles.headerLarge,
        ));
  }

  Widget _sectionText(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
        child: Text(
          text,
          textAlign: TextAlign.justify,
          //style: Styles.textDefault,
        ));
  }

  Widget _sectionSprites(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.fitHeight),
    );
  }

  List<Widget> _renderBody(BuildContext context, Pokemon pokemon) {
    var result = List<Widget>();
    result.add(_bannerImage(pokemon.infos.sprites[1].url, 200.0));
    result.addAll(_renderInfos(context, pokemon));
    result.addAll(_renderSprites(context, pokemon));
    return result;
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.fitWidth),
    );
  }
}
