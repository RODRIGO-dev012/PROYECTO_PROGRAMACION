
import 'package:flutter/material.dart';
import 'package:proyecto_flutter_progra/review.dart';
import 'description_place.dart';

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final descriptionPlace = Container(
      margin: EdgeInsets.only(
        top: 250,
        left: 30,
        right: 30
      ),
      child: DescriptionPlace("Uyuni",4,"Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen"),
    );


    final review = Container(
      margin: EdgeInsets.only(
          top: 300,
          left: 30,
          right: 30
      ),
      height: 80,
      child: Review("assets/images/persona1.jpg","Laura Leon","1 review - 3 photos",4,"Muy buen lugar para visitar"),
    );


    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My places"
        ),
      ),
      body: Stack(
        children: <Widget>[
          review
        ],
      )
    );
  }
}
