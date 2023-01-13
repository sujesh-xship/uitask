
import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String text;
  final Color color;
  const TextBox({Key? key, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0),
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}

