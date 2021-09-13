import 'package:cmei/entrarFUN.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'InicioFUN.dart';
import 'PerfilFUN.dart';
import 'package:google_fonts/google_fonts.dart';

class EscolhaAluno extends StatefulWidget {
  @override
  _EscolhaAlunoState createState() => _EscolhaAlunoState();
}

class _EscolhaAlunoState extends State<EscolhaAluno> {
  final _formKey = GlobalKey<FormState>();

  void _irParaPerfilAlunoFUN() {
    //Navegação de tela
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PerfilFUN()));
  }

  void _irParaInicioFUN() {
    //Navegação de tela
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => InicioFUN()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alunos'),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blueAccent,
                Colors.white,
                Colors.white,
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
                      padding: EdgeInsets.all(20),
                      child: RaisedButton(
                        child: Column(
                          // Replace with a Row for horizontal icon + text
                          children: <Widget>[
                            Text(
                              "Vinicius Oliveira",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                        color: Colors.blueAccent,
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: () {
                          _irParaPerfilAlunoFUN();
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: RaisedButton(
                        child: Column(
                          // Replace with a Row for horizontal icon + text
                          children: <Widget>[
                            Text(
                              "Josias Kleber",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                        color: Colors.blueAccent,
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: RaisedButton(
                        child: Column(
                          // Replace with a Row for horizontal icon + text
                          children: <Widget>[
                            Text(
                              "Jobson João",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                        color: Colors.blueAccent,
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: () {

                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: RaisedButton(
                        child: Column(
                          // Replace with a Row for horizontal icon + text
                          children: <Widget>[
                            Text(
                              "Meliodas Irineu",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                        color: Colors.blueAccent,
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              )),
        ),
        drawer: Drawer(
            child: Container(color: Colors.blueAccent,
            child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(''),
            ),
            ListTile( //alunos
                leading: Icon(Icons.people, size: 40.0, color: Colors.white,),
                title: Text("Alunos", style: TextStyle(color: Colors.white, fontSize: 20)),
                onTap: () {

                }),
            ListTile( // calendario
                leading: Icon(Icons.calendar_today, size: 40.0, color: Colors.white,),
                title: Text("Calendário", style: TextStyle(color: Colors.white, fontSize: 20)),
                onTap: () {
                }),
            ListTile( // cadastro
                leading: Icon(Icons.add_circle_outline, size: 40.0, color: Colors.white,),
                title: Text("Cadastrar usuários", style: TextStyle(color: Colors.white, fontSize: 20)),
                onTap: () {
                }),
            ListTile( // configuração
                leading: Icon(Icons.settings, size: 40.0, color: Colors.white,),
                title: Text("Configurações", style: TextStyle(color: Colors.white, fontSize: 20)),
                onTap: () {
                }),
            ListTile( // voltar
                leading: IconButton(icon: new Image.asset("imagens/voltarbranco.png")),
                title: Text("Voltar para escolha de turmas", style: TextStyle(color: Colors.white, fontSize: 20)),
                onTap: () {
                }),
          ],
        ))));
  }
}
