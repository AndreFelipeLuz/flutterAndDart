import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  Resposta(this.texto,this.selecionado, {super.key});
  
  final String texto;
  final void Function() selecionado;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      child:ElevatedButton(
              style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 0, 0, 0)),
              child: Text(texto,style: TextStyle(color: Color.fromARGB(255, 218, 9, 172).withOpacity(1.0))),
              onPressed: selecionado,
            )
    );
    }
}