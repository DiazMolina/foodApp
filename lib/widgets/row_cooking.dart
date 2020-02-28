import 'package:flutter/material.dart';
class Cooking extends StatelessWidget {
  final String minute,type;
  final IconData icon;

  const Cooking({Key key, this.icon, this.minute, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(icon,
              color: Colors.redAccent, size: 50),
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: minute,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: ' ${type}',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey))
              ]))
        ],
      ),
    );
  }
}
