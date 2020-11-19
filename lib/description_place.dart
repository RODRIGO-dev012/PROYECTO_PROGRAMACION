import 'package:flutter/material.dart';

class Description_place extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    final titulo = Container(
      margin: EdgeInsets.only(
        top: 260,
        left: 20,
        right: 28
      ),
      child: Text(
        "Dowili Ella",
        style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w900

        ),
      ),
    );
    final estrella = Container(
      margin: EdgeInsets.only(
          top: 262,
          left: 8
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );
    final estrellaBorder = Container(
      margin: EdgeInsets.only(
          top: 262,
          left: 8
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.black26,
      ),
    );
    final estrellas = Row(
      children: [
        estrella,
        estrella,
        estrella,
        estrella,
        estrellaBorder,
      ],
    );
    final header = Row(
      children: [
        titulo,
        estrellas
      ],
    );
    final description = Container(
      margin: EdgeInsets.all(20),
      child: Text(
        "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen..",
        style: TextStyle(
      fontSize: 18,
          color: Colors.black54
        ),
      ),
    );
    return Column(
      children: [
        header,
        description
      ],
    );
  }
}