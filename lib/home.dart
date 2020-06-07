import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stethicis/agenda.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink[700], Colors.pink[300], Colors.amber[300]],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
        ),

        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Horizontal
            mainAxisSize: MainAxisSize.max, // Tamanho da coluna na vertical
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Vertical

            children: <Widget>[
              Text('Stethicis', style: GoogleFonts.yesteryear(
                  textStyle: TextStyle(
                    fontSize: 90.0,
                    color: Colors.white,
                  ),
              ),
            ),
              OutlineButton(

                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => AgendaScreen()));
                  },
                child: Padding(
                  padding: EdgeInsets.all(14.0),
                   child:Text('Ver agenda', style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                ),
                ),
                ),
                highlightedBorderColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                borderSide: BorderSide(color: Colors.white),
                )
            ],
          ),
          ),
        ),
      );
  }
}