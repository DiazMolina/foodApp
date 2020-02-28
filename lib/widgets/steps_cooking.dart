import 'package:flutter/material.dart';
class Steps extends StatelessWidget {
  final String step;

  const Steps({Key key, this.step}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
       child: Column(
    children: <Widget>[
    Text('STEP ${step}',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w300,color: Colors.grey),),
    Text('Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) ',textAlign: TextAlign.justify,)
    ],

    ),
    );
  }
}
