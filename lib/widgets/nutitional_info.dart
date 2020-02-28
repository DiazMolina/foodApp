import 'package:flutter/material.dart';

class Nutritional extends StatelessWidget {
  final String nutrition, value;

  const Nutritional({Key key, this.nutrition, this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            nutrition,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          Text(
            value,
            style: TextStyle(color: Colors.pinkAccent, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
