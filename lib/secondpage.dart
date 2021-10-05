import 'package:flutter/material.dart';

Widget looksecondpage(String _superHeroName){

  return Scaffold(
          appBar: AppBar(
            title: Text(_superHeroName),
          ),
          body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          
             Row(
               
               children: [
                 Image.network('https://chrissx.de/favicon.ico'),//image von website, image.network
                 Image.network('https://chrissx.de/favicon.ico'),
                 Image.network('https://chrissx.de/favicon.ico'),
                 Image.network('https://chrissx.de/favicon.ico'),
                ]
                 
               ),
               Row(
               
               children: [
                 Image.network('https://chrissx.de/favicon.ico'),//image von website, image.network
                 Image.network('https://chrissx.de/favicon.ico'),
                 Image.network('https://chrissx.de/favicon.ico'),

          
             ]   
          ),
          ]
          ),
          );
}