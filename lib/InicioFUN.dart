import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'escolhaTurma.dart';
import 'escolhaAluno.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioFUN extends StatefulWidget {
  @override
  _InicioFUNState createState() => _InicioFUNState();
}

class _InicioFUNState extends State<InicioFUN> {
  final _formKey = GlobalKey<FormState>();

  void _irParaEscolhaAluno() {
    //Navegação de tela
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => EscolhaAluno()));
  }

  void _irParaEscolhaTurma() {
    //Navegação de tela
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EscolhaTurma()));
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
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.stretch, //alinhamento em alongamento
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(12),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Center(
                  child: Text(
                    "CMEI",
                    textDirection: TextDirection.ltr,
                    style: GoogleFonts.mPlusRounded1c(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 88,
                      fontWeight: FontWeight.w700,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Image.asset(
                  "imagens/logo.png",
                  height: 250,
                  width: 250,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Center(
                  child: Text(
                    "Berçário I A",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      color: Colors.blueAccent,
                      padding: EdgeInsets.all(10.0),
                      child: Column( // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                          Icon(Icons.people, size: 40.0, color: Colors.white,),
                          Text("Alunos", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      onPressed: () {
                        _irParaEscolhaAluno();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      color: Colors.blueAccent,
                      padding: EdgeInsets.all(10.0),
                      child: Column( // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                          Icon(Icons.calendar_today, size: 40.0, color: Colors.white,),
                          Text("Calendário", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      onPressed: () {

                      },
                    ),
                  ),
  ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      color: Colors.blueAccent,
                      padding: EdgeInsets.all(10),
                      child: Column( // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                          Icon(Icons.add_circle, size: 40.0, color: Colors.white,),
                          Text("Cadastrar", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      onPressed: () {
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      color: Colors.blueAccent,
                      padding: EdgeInsets.all(10.0),
                      child: Column( // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                          Icon(Icons.settings, size: 40.0, color: Colors.white,),
                          Text("Configuração", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      onPressed: () {

                      },
                    ),
                  ),
                  ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      color: Colors.blueAccent,
                      padding: EdgeInsets.all(10.0),
                      child: Column( // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                          IconButton(icon: new Image.asset("imagens/voltarbranco.png")),
                          Text("Voltar", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                      onPressed: () {
                        _irParaEscolhaTurma();
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
