import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ingredient extends StatelessWidget {
  final String image, title;

  const Ingredient({Key key, this.image, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.redAccent,
                image: DecorationImage(
                    image: NetworkImage(image
                        ),
                    fit: BoxFit.cover)),
            width: 100,
            height: 100,
          ),
          Container(
              width: 95,
              child: Text(
                title,
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}
