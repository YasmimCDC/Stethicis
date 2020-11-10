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
            mainAxisSize: MainAxisSize.min, // Tamanho da coluna na vertical
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Vertical

            children: <Widget>[
              Text('Stethicis', style: GoogleFonts.yesteryear(
                  textStyle: TextStyle(
                    fontSize: 100.0,
                    color: Colors.white,
                  ),
              ),
            ),
              Padding(
                padding: EdgeInsets.only(bottom: 200.0),
                child: Text('Sua agenda virtual', style: GoogleFonts.salsa(
                              textStyle: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                              )
                            )
                )
            ),
              OutlineButton(
            
                  onPressed: (){
                  
                    Navigator.push(context, _createRoute());
                  },

                child: Padding(
                  padding: EdgeInsets.all(14.0),
                    child:Text('O que vamos fazer hoje?', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
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

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>  AgendaScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 3.0);
      var end = Offset.zero;
      var tween = Tween(begin: begin, end: end);
      var offsetAnimation = animation.drive(tween);

  return SlideTransition(
    position: offsetAnimation,
    child: child,
  );
  },
  );
}
