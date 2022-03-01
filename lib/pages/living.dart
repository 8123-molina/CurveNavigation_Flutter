import 'package:flutter/material.dart';

class Living extends StatefulWidget {
  const Living({Key? key}) : super(key: key);

  @override
  _LivingState createState() => _LivingState();
}

class _LivingState extends State<Living> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Living'),
      ),
    );
  }
}
