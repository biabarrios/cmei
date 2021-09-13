import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'entrarFamiliar.dart';
import 'entrarFUN.dart';
import 'package:google_fonts/google_fonts.dart';

class Escolha extends StatefulWidget {
  @override
  _EscolhaState createState() => _EscolhaState();
}

class _EscolhaState extends State<Escolha> {

  final _formKey = GlobalKey<FormState>();

  void _irParaEntrarFamiliar() {
    //Navegação de tela
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EntrarFamiliar()));
  }
  void _irParaEntrarFUN() {
    //Navegação de tela
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EntrarFUN()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.white,
              Colors.blueAccent,
            ],
          ),
        ),
        child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.stretch, //alinhamento em alongamento
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(26),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2),
                    child: Center(
                      child: Text(
                        "CMEI",
                        textDirection: TextDirection.ltr,
                        style: GoogleFonts.mPlusRounded1c(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 88,
                          fontWeight: FontWeight.w700,
                          color:Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2),
                    child: Image.asset(
                      "imagens/logo.png",
                      height: 250,
                      width: 250,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: RaisedButton(
                      child: Text(
                        "Familiar",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.lightGreen,
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _irParaEntrarFamiliar();
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: RaisedButton(
                      child: Text(
                        "Funcionário",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.blue,
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _irParaEntrarFUN();
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(180),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
