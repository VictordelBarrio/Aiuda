import 'package:flutter/material.dart';


class HomePageAlternativo extends StatelessWidget {
  final opciones = [
    {"title": "Adore you", "description": "Harry Styles", "icons": Icons.play_circle_fill ,"icons2": Icons.favorite_border_outlined},
    {"title": "Blinding Lights", "description": "The weeknd", "icons": Icons.pause,"icons2": Icons.favorite},
    {"title": "Not now", "description": "Blink-182", "icons": Icons.play_circle_fill,"icons2": Icons.favorite},
    {"title": "Sweet Dreams, TN", "description": "The last shadow puppets", "icons": Icons.play_circle_fill,"icons2": Icons.favorite_border_outlined},
    {"title": "Circles", "description": "Post Malone", "icons": Icons.play_circle_fill,"icons2": Icons.favorite_border_outlined},
    {"title": "Kids", "description": "The Currents Joys", "icons": Icons.play_circle_fill,"icons2": Icons.favorite},
    {"title": "The real slim shady", "description": "Eminem", "icons": Icons.play_circle_fill,"icons2": Icons.favorite_border_outlined},
    {"title": "Slow", "description": "Andy Grammer", "icons": Icons.play_circle_fill,"icons2": Icons.favorite},
    {"title": "Yellow", "description": "Coldplay", "icons": Icons.play_circle_fill,"icons2": Icons.favorite_border_outlined},
    {"title": "Watermelon sugar", "description": "Harry Styles", "icons": Icons.play_circle_fill,"icons2": Icons.favorite_border_outlined},
    {"title": "In the club", "description": "50 cent", "icons": Icons.play_circle_fill,"icons2": Icons.favorite},
    {"title": "Memories", "description": "Marron 5", "icons": Icons.play_circle_fill,"icons2": Icons.favorite},
    {"title": "Try", "description": "P!nk", "icons": Icons.play_circle_fill,"icons2": Icons.favorite},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Youtube Music'),
      ),
      body: ListView(children: _crearItemsCorto()),
    );
  }


  List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      var iconos = {'icons'};
      return Column(
        children: [
          ListTile(
            title: Text((item['title'])),
            subtitle: Text(item['description']), 
            leading: Icon(item['icons'], size: 30),
            trailing: Icon(item['icons2'], size: 30, color: Colors.red),
            onTap: (){
              
            },
          ),
          Divider()
        ],
      );
    }).toList();
  }
}