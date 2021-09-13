import 'package:cmei/entrarFUN.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'InicioFUN.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilFUN extends StatefulWidget {
  @override
  _PerfilFUNState createState() => _PerfilFUNState();
}

class _PerfilFUNState extends State<PerfilFUN> {
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
