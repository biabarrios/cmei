import 'package:cmei/entrarFUN.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AvisosFunc.dart';
import 'InicioFUN.dart';

import 'package:google_fonts/google_fonts.dart';

class PerfilFUN extends StatefulWidget {
  @override
  _PerfilFUNState createState() => _PerfilFUNState();
}

class _PerfilFUNState extends State<PerfilFUN> {

  void _irParaAvisosFun() {
    //Navegação de tela
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AvisosFunc()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Perfil'),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Container(
          child: Form(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.stretch, //alinhamento em alongamento
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Image.asset(
                        "imagens/perfil.png",
                        height: 250,
                        width: 250,
                      ),
                    ),
                    ListTile(
                      //alunos
                        title: Text(
                          'Instituição',
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                        subtitle: Text('CMEI Pedro Dambros'),
                        onTap: () {}),
                    ListTile(
                      //alunos
                        title: Text(
                          'Endereço',
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                        subtitle: Text(
                            'R. Estanislau Cidral, 946   Alto Alegre, Cascavel - PR, 85805-280'),
                        onTap: () {}),
                    ListTile(
                      //alunos
                        title: Text(
                          'Turma',
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                        subtitle: Text('Pré-Escola I'),
                        onTap: () {}),
                    ListTile(
                      //ano
                        title: Text(
                          'Ano',
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                        subtitle: Text('2021'),
                        onTap: () {}),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: RaisedButton(
                              color: Colors.blueAccent,
                              padding: EdgeInsets.all(5),
                              child: Column(
                                // Replace with a Row for horizontal icon + text
                                children: <Widget>[
                                  IconButton(icon: new Image.asset("imagens/avisos.png")),
                                  Text(
                                    "Avisos",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                _irParaAvisosFun();
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: RaisedButton(
                              color: Colors.blueAccent,
                              padding: EdgeInsets.all(5),
                              child: Column(
                                // Replace with a Row for horizontal icon + text
                                children: <Widget>[
                                  IconButton(icon: new Image.asset("imagens/desempenho.png")),
                                  Text(
                                    "Desempenho",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: RaisedButton(
                            color: Colors.blueAccent,
                            padding: EdgeInsets.all(5),
                            child: Column(
                              // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                IconButton(icon: new Image.asset("imagens/historico.png")),
                                Text(
                                  "Historico de saúde",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: RaisedButton(
                            color: Colors.blueAccent,
                            padding: EdgeInsets.all(5),
                            child: Column(
                              // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                IconButton(icon: new Image.asset("imagens/contato.png")),
                                Text(
                                  "Contatos",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],

                    ),
                  ],
                ),
              )),
        ),
        drawer: Drawer(
            child: Container(
                color: Colors.blueAccent,
                child: ListView(
                  children: <Widget>[
                    DrawerHeader(
                      child: Text(''),
                    ),
                    ListTile(
                      //alunos
                        leading: Icon(
                          Icons.people,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        title: Text("Alunos",
                            style:
                            TextStyle(color: Colors.white, fontSize: 20)),
                        onTap: () {}),
                    ListTile(
                      // calendario
                        leading: Icon(
                          Icons.calendar_today,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        title: Text("Calendário",
                            style:
                            TextStyle(color: Colors.white, fontSize: 20)),
                        onTap: () {}),
                    ListTile(
                      // cadastro
                        leading: Icon(
                          Icons.add_circle_outline,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        title: Text("Cadastrar usuários",
                            style:
                            TextStyle(color: Colors.white, fontSize: 20)),
                        onTap: () {}),
                    ListTile(
                      // configuração
                        leading: Icon(
                          Icons.settings,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        title: Text("Configurações",
                            style:
                            TextStyle(color: Colors.white, fontSize: 20)),
                        onTap: () {}),
                    ListTile(
                      // voltar
                        leading: IconButton(
                            icon: new Image.asset("imagens/voltarbranco.png")),
                        title: Text("Voltar para escolha de turmas",
                            style:
                            TextStyle(color: Colors.white, fontSize: 20)),
                        onTap: () {}),
                  ],
                ))));
  }
}