import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ListaProdutos extends StatelessWidget {
  final lista = [
    {
      'nome': 'Pietro',
      'telefone': '(11) 9 9874-5656',
      'avatar':
          'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png'
    },
    {
      'nome': 'Maitê',
      'telefone': '(11) 9 9632-8578',
      'avatar':
          'https://cdn.pixabay.com/photo/2021/01/17/09/11/woman-5924366_960_720.jpg'
    },
    {
      'nome': 'Hortência',
      'telefone': '(11) 9 9562-3356',
      'avatar':
          'https://cdn.pixabay.com/photo/2021/01/24/09/28/girl-5944691_960_720.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.greenAccent,
      // body: ListView.builder(
      // itemCount: lista.length,
      // ignore//  itemBuilder: (context, i) {
      //  var contato = lista[i];
      // var avatar = CircleAvatar( backgroundImage: NetworkImage(contato['avatar']),);
      //   return ListTile(
      //leading: avatar,
      // title: Text(contato['nome']),
      //   subtitle:  Text(contato['telefone']),
      // trailing: Container(
      //  width: 100,
      //  child: Row(
      //  children: [
      //    IconButton(icon: Icon(Icons.edit), onPressed: null),
      //   IconButton(icon: Icon(Icons.delete), onPressed: null),
      // ],
      //  ),
      // ),
      //);
      // },
      //),
    );
  }
}
