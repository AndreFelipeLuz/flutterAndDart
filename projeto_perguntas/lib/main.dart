import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());


class PerguntaAppState extends State<PerguntaApp>{
  int perguntaSelect = 0;

  void responder(){
    setState(() {
      perguntaSelect ++;  
    });
    print('pergunta respondida irmão!! tmj!');
    print(perguntaSelect);
  }

  @override
  Widget build(BuildContext context){
    final pergunte = [
      'qual  sua bebida favorita',
      'qual sua serie favorita',
      'qual seu pokemon favorito',
      'qual sua classe favorita'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("perguntas"),
        ),
        body: Column(
          children: [
            Text(pergunte[perguntaSelect]),
            ElevatedButton(
              child: Text('Coca cola'),
              onPressed: responder,
            ),ElevatedButton(
              child: Text('Guarana Jesus'),
              onPressed: responder,
            ),ElevatedButton(
              child: Text('Pepsi'),
              onPressed: responder,
            )
          ],
        ),
        ),
      );
  }
}

class PerguntaApp extends StatefulWidget{

  PerguntaAppState createState(){
    return PerguntaAppState();
  }
}
