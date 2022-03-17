import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CadastroProdView extends StatefulWidget {
  const CadastroProdView({Key? key}) : super(key: key);

  @override
  _CadastroProdViewState createState() => _CadastroProdViewState();
}

class _CadastroProdViewState extends State<CadastroProdView> {
  File? imageFile;

  String? get path => null;

  // ignore: unused_element
  void _getFromCamera() async {
    // ignore: unused_local_variable
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxHeight: 80,
      maxWidth: 80,
    );
    setState(() {
      imageFile = File(pickedFile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: ListView(children: [
        // ignore: prefer_const_constructors
        SizedBox(
          height: 50,
        ),
        imageFile != null
            // ignore: avoid_unnecessary_containers
            ? Container(
                child: Image.file(imageFile!),
              )
            // ignore: avoid_unnecessary_containers
            : Container(
                child: Icon(
                Icons.camera_enhance_rounded,
                color: Colors.greenAccent,
                size: MediaQuery.of(context).size.width * .6,
              )),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: ElevatedButton(
            child: const Text("Capturar foto"),
            onPressed: () {
              _getFromCamera();
            },
          ),
        ),
      ]),
    );
  }
}
