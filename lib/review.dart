import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  //variables
  String pathFoto;
  String textoNombreUsuario;
  String textResumenUsuario;
  int cantidadEstrellas;
  String textoComentario;

  //metodo constrcutor
  Review(this.pathFoto,this.textoNombreUsuario,this.textResumenUsuario,this.cantidadEstrellas,this.textoComentario);

  @override
  Widget build(BuildContext context) {
    final foto = Container(
      margin: EdgeInsets.only(
        right: 10,
      ),
      height: 90,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage(
                pathFoto),
          fit: BoxFit.cover
        )
      ),
    );


    //nombre del usuario
    final nombreUsuario = Container(
      child: Text(
        textoNombreUsuario,
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 22
      ),
      ),
    );

    //resumenUsuario
    final resumenUsuario = Container(
      margin: EdgeInsets.only(
        right: 10,
      ),
      child: Text(
        textResumenUsuario,
            style: TextStyle(
              fontFamily: "Lato",
                color: Colors.black54
            ),
      ),
    );

    //estrella
    final estrella = Container(
      margin: EdgeInsets.only(
        right: 5,
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
        size: 18,
      ),
    );


    //estrella borde
    final estrellaBorde = Container(
      margin: EdgeInsets.only(
          right: 5
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.black26,
        size: 18,
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

    //fila resumen
    final filaResumen = Row(
      children: <Widget>[
        resumenUsuario,
        filaEstrellas
      ],
    );

    //comentario
    final comentario = Container(
      child: Text(
          textoComentario,
          style: TextStyle(
            fontFamily: "Lato",
          ),
      ),
    );

    //columna review
    final columnaReview = Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        nombreUsuario,
        filaResumen,
        comentario
      ],
    );

    //review
    final review = Row(
      children: <Widget>[
        foto,
        comentario
      ],
    );
    return review;
  }
}