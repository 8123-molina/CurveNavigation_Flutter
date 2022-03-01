import 'package:flutter/material.dart';

class Garagem extends StatefulWidget {
  const Garagem({Key? key}) : super(key: key);

  @override
  _GaragemState createState() => _GaragemState();
}

class _GaragemState extends State<Garagem> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Text('Garagem'),
      ),
    );
  }
}
