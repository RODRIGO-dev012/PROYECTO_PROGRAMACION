import 'package:flutter/material.dart';
import 'package:proyecto_flutter_progra/rounded_button.dart';

class DescriptionPlace extends StatelessWidget{
  //variables
  String Textotitulo;
  int cantidadEstrellas;
  String textoDescripcion;

  DescriptionPlace(this.Textotitulo, this.cantidadEstrellas, this.textoDescripcion);

  @override
  Widget build(BuildContext context){
    final titulo = Container(
      child: Text(
        Textotitulo,
        style: TextStyle(
          fontFamily: "Lato",
            fontSize: 38,
            fontWeight: FontWeight.bold
        ),
      ),
    );
    final estrella = Container(
      margin: EdgeInsets.only(
        right: 5,
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );
    final estrellaBorde = Container(
      margin: EdgeInsets.only(
          right: 5
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.black26,
      ),
    );


    //fila estrellas
    List<Container> estrellas =new List();
    for(int i = 0 ; i < 5 ; i++){
      if(i < cantidadEstrellas){
        estrellas.add(estrella);
      }else{
        estrellas.add(estrellaBorde);
      }
    }
    final filaEstrellas = Row(
      children:
        estrellas,
    );
    final finaltitulo = Row(
      children: [
        titulo,
        filaEstrellas
      ],
    );
    final descripcion = Container(
      margin: EdgeInsets.only(
        top: 8,
      ),
      child: Text(
        textoDescripcion,
        style: TextStyle(
            fontFamily: "Lato",
      fontSize: 18,
          color: Colors.black54
        ),
      ),
    );
    final descriptionPlace = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        finaltitulo,
        descripcion,
        RoundedButton("Navigate")
      ],
    );

    return descriptionPlace;
  }
}