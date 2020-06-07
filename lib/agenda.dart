import 'package:flutter/material.dart';
import 'package:stethicis/tarefas.dart';

class AgendaScreen extends StatefulWidget{

  List<String> lista = ['oi', 'ola', 'iae', 'tudubom', 'bondia'];

  @override
  State createState() {
    return _AgendaScreenState();
  }
}

class _AgendaScreenState extends State<AgendaScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add), onPressed: (){
            var key =  GlobalKey<FormState>();
            showDialog(context: context, child: AlertDialog(
              actions: <Widget>[
                FlatButton(
                    onPressed: (){
                      setState(() {
                        key.currentState.save();
                        Navigator.pop(context);
                      });
                    },
                    child: Text('Salvar'))
              ],
              content: Form(
                key: key,
                child: TextFormField(
                  initialValue: 'nome',
                  onSaved: (value){
                    widget.lista.add(value);
                  },
                ),
              ),
            ));
          })
        ],
      ),
      body: Container(
        child: Center(
          child: ListView.builder(
            itemCount: widget.lista.length,
            itemBuilder: (_, index) => ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => TarefaScreen()));
              },
              trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: (){
                    setState(() {
                      widget.lista.removeAt(index);
                    });
              }),
              title: Text(widget.lista[index]),
            ),
          ),
        ),
      ),
    );
  }
}