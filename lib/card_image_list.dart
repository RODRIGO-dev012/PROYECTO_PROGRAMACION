import 'package:flutter/cupertino.dart';
import 'package:image/image.dart';
import 'package:proyecto_flutter_progra/card_image.dart';
class CardImagesList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final cardImageList = Container(
      height: 330,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/images/lugar1.jpg"),
          CardImage("assets/images/lugar2.jpg"),
          CardImage("assets/images/lugar3.jpg"),
          CardImage("assets/images/lugar4.jpg"),
          CardImage("assets/images/lugar5.jpg"),
          CardImage("assets/images/lugar6.jpg")
        ],
      ),
    );

    return cardImageList;
  }
}