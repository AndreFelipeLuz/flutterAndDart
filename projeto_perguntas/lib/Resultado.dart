import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  const Resultado(this.pontuacao,this.quandoReiniciarQuestionario, {super.key});

  String get fraseResult{
    if(pontuacao < 24){
      return "sei que pode melhorar,tente denovo!";
    }else if(pontuacao > 25 && pontuacao < 30)
    {
      return "Boa garoto ai sim!!";
    }else{
      return "AI SIM TO GOSTANDO DE VER!";
    }
  } 

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResult,
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        TextButton(
          onPressed: quandoReiniciarQuestionario,
          child: const Text(
            'Reiniciar?',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }}