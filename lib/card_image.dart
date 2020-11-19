import 'package:flutter/material.dart';

class CardImage extends StatelessWidget{
  String path;


  CardImage(this.path);
  @override
  Widget build(BuildContext context) {
    final cardImage = Container(
      height: 200,
      width: 200,
      margin: EdgeInsets.all(80),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                path,
              ),
            fit: BoxFit.cover,
          ),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black45,
              blurRadius: 13,
              offset: Offset(0, 20)
            )
        ]
      ),
    );
    return cardImage;
  }
}