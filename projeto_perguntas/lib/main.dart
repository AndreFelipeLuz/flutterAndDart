import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/Resultado.dart';
main() => runApp(PerguntaApp());


class _PerguntaAppState extends State<PerguntaApp>{
  int _perguntaSelecionada = 0;
  int _pontuacaoTotal = 0;
  bool get temPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas.length;
  }
  final _perguntas = const[
      {
        'texto': 'Qual seu animal mitologico favorito',
        'respostas': 
        [
          {'texto': 'Dragão','nota': 9},
          {'texto': 'Hydra', 'nota': 6},
          {'texto': 'Pegasus','nota': 4}
        ]
      },
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': 
        [
          {'texto': 'Vermelho','nota': 10},
          {'texto': 'Verde', 'nota': 3},
          {'texto': 'Roxo','nota': 7}
        ],
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': 
        [
          {'texto': 'Axolote','nota': 10},
          {'texto': 'Calopsita', 'nota': 8},
          {'texto': 'Serpente','nota': 12}
        ],
      },
      {
        'texto': 'Qual é o seu Jogo favorito?',
        'respostas': 
        [
          {'texto': 'Terraria','nota': 9},
          {'texto': 'Minecraft', 'nota': 7},
          {'texto': 'Subnautica','nota': 9},
          {'texto': 'Stardew Valley','nota': 8}
        ],
      },
    ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
      print(_pontuacaoTotal);
    }
  }
    void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal,_reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{

  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }
}
