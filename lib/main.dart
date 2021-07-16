import 'package:flutter/material.dart';
import 'package:super_hero/super_hero.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
  
  
  return MaterialApp(
    title: 'Mathematische Funktionen',
    home: SuperHeroNameGenerator(),
    );

  }
  }


class SuperHeroNameGenerator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SuperHeroName();


}
class _SuperHeroName extends State<SuperHeroNameGenerator>{

  final _SuperHeroNames = <String>[];//listee
  final _hearted = <String>{};    //map

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        centerTitle: 
        true,
        title: Text('Servus'),

    ),
    body: _buildBody(),
    );
  }
  Widget _buildBody(){                                                                      
    return ListView.builder(padding: EdgeInsets.all(16), itemBuilder: (context, i){
      if(i.isOdd){
        return Divider();
      }
      if(i ~/ 2 >= _SuperHeroNames.length){
        _SuperHeroNames.addAll(_generateSuperheroNames());
      }
      return _buildRow(_SuperHeroNames[i ~/ 2]);
    }
    
    );
  }
Iterable<String> _generateSuperheroNames(){
  List<String> myNames = [
    SuperHero.random(),
    SuperHero.random(),
    SuperHero.random(),
    SuperHero.random(),
    SuperHero.random(),
    SuperHero.random(),
    SuperHero.random(),
    SuperHero.random(),
    SuperHero.random(),
  ];
  return myNames;
}

Widget _buildRow(String superHeroName){
  final _markedFav = _hearted.contains(superHeroName);
  return ListTile(
    title: Text(superHeroName),
    trailing: Icon(
      _markedFav ? Icons.favorite : Icons.favorite_border,          //tenärer operator
      color: _markedFav ? Colors.black : null,
    ),
    onTap: (){
      setState(() {
        _markedFav ? _hearted.remove(superHeroName): _hearted.add(superHeroName);
      });

    },
    onLongPress: () {_pushExample(superHeroName);
    },
  );
}

void _pushExample(String superHeroName){
  Navigator.of(context).push(
    MaterialPageRoute<void>(builder: (BuildContext context){
    final _superHeroName = superHeroName;
    return Scaffold(
      appBar: AppBar(
      title: Text(_superHeroName),
       ),
       body: Center(
         child: Image.network('https://chrissx.de/favicon.ico'),
       ),
     );
    }),
  );
}
}


