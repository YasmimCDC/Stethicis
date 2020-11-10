import 'package:flutter/material.dart';

class TarefaScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarefas'),
      ),
      body: Container(
        child: Text('Parabéns, você concluiu todas as suas tarefas'),
      ),
    );
  }
}