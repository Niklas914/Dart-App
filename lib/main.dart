import 'package:flutter_app_test/layouts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/secondpage.dart';
import 'package:super_hero/super_hero.dart';
import 'package:flutter/cupertino.dart';


void main() => runApp(MyApp()); //main methode

class MyApp extends StatelessWidget {
  //aufrufen der funktion, class SuperHeroNameGeberator
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mathematische Funktionen',
      home: SuperHeroNameGenerator(),
    );
  }
}

class SuperHeroNameGenerator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SuperHeroName();
}

class _SuperHeroName extends State<SuperHeroNameGenerator> {
  final _SuperHeroNames = <String>[]; //listee
  final _hearted = <String>{}; //map

  @override
  Widget build(BuildContext context) {
    //bau der app, benutzung des scaffolds
    return Scaffold(
      ///festlegen des aussehens
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        centerTitle: true,
        title: Text('Mathematische Funktionen'),
      ),
      body: mainWidget(),//_buildBody(), //aufrufen der funktion buildbody
      backgroundColor: Colors.white,
    );
  }

  Widget _buildBody() {
    return ListView.builder(
        padding: EdgeInsets.all(16),
        itemBuilder: (context, i) {
          //erstellen der Liste, padding: Seitenrand
          if (i.isOdd) {
            return Divider(); //Divider für platz zwischen zwei widgets
          }
          if (i ~/ 2 >= _SuperHeroNames.length) {
            _SuperHeroNames.addAll(_generateSuperheroNames());
          }
          return _buildRow(_SuperHeroNames[i ~/ 2]);
        });
  }

  Iterable<String> _generateSuperheroNames() {
    //Funktion für neues hinzufügen von namen zur liste, returnen
    List<String> myNames = [SuperHero.random()];
    return myNames;
  }

  Widget _buildRow(String superHeroName) {
    final _markedFav = _hearted.contains(superHeroName);
    return ListTile(
      title: Text(superHeroName),
      trailing: Icon(
        //trailing, widget after title
        _markedFav ? Icons.hearing_outlined : Icons.favorite_border,
        color: _markedFav ? Colors.red : null,
      ),
      onTap: () {
        //herzen am rande, setState
        setState(() {
          _markedFav
              ? _hearted.remove(superHeroName)
              : _hearted.add(superHeroName);
        });
      },
      onLongPress: () {
        _pushExample(
            superHeroName); //!!!          //Lange gedrückt, funktionaufruf, funktion muss so geschrieben werden, da parameter (superHeroName übergeben wird)
      },
    );
  }

  void _pushExample(String superHeroName) {
    Navigator.of(context).push(
      //navigator, weiß wo man ist, information wird darauf gepusht
      MaterialPageRoute<void>(builder: (BuildContext context) {
        //Buildet neuen context
        final _superHeroName =
            superHeroName; //superheld der angeklickt wurde, auch als titel, s title
        return looksecondpage(_superHeroName);
        
      }),
    );
  }
}
