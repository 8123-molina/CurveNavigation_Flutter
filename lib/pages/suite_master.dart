import 'package:flutter/material.dart';

class SuiteMaster extends StatefulWidget {
  const SuiteMaster({Key? key}) : super(key: key);

  @override
  _SuiteMasterState createState() => _SuiteMasterState();
}

class _SuiteMasterState extends State<SuiteMaster> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('SuiteMaster'),
      ),
    );
  }
}