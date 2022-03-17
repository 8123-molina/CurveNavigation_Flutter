import 'package:flutter/material.dart';

class CardsItens extends StatelessWidget {
  const CardsItens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 10,
            blurRadius: 10,
            offset: Offset(1, 10),
          ),
        ],
      ),
      color: Colors.purpleAccent,
      height: 200,
      width: 300,
    );
  }
}
