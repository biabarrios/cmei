import 'package:cmei/entrarFUN.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'InicioFUN.dart';


class EscolhaTurma extends StatefulWidget {
  @override
  _EscolhaTurmaState createState() => _EscolhaTurmaState();
}

class _EscolhaTurmaState extends State<EscolhaTurma> {
  final _formKey = GlobalKey<FormState>();

  void _irParaEntrarFUN() {
    //Navegação de tela
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EntrarFUN()));
  }
  void _irParaInicioFUN() {
    //Navegação de tela
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => InicioFUN()));
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
                  IconButton(
                      alignment: Alignment.centerLeft,
                      icon: new Image.asset("imagens/volta.png"),
                      onPressed: () {
                          _irParaEntrarFUN();
                      }),
                  Padding(
                    padding: EdgeInsets.all(0),
                    child: Center(
                      child: Text(
                        "Turmas",
                        style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                        labelText: "Pesquisar",
                        prefixIcon: Icon(Icons.search),
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: RaisedButton(
                      child: Text(
                        "Berçário A",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.blueAccent,
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {
                          _irParaInicioFUN();
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: RaisedButton(
                      child: Text(
                        "Berçário B",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.blue,
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: RaisedButton(
                      child: Text(
                        "Martenal I A",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.blue,
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: RaisedButton(
                      child: Text(
                        "Martenal I B",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.blue,
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: RaisedButton(
                      child: Text(
                        "Martenal I C",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.blue,
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: RaisedButton(
                      child: Text(
                        "Martenal II A",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.blue,
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: RaisedButton(
                      child: Text(
                        "Martenal II B",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.blue,
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
