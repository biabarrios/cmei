import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validadores/Validador.dart';
import 'escolhaTurma.dart';
import 'package:google_fonts/google_fonts.dart';

class EntrarFUN extends StatefulWidget {
  @override
  _EntrarFUNState createState() => _EntrarFUNState();
}

class _EntrarFUNState extends State<EntrarFUN> {
  final _formKey = GlobalKey<FormState>();

  void _irParaEscolhaTurma() {
    //Navegação de tela
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EscolhaTurma()));
  }

  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();

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
                    padding: EdgeInsets.all(12),
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
                        "Funcionários",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      controller: _controllerEmail,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                        labelText: "E-mail",
                        prefixIcon: Icon(Icons.mail_outline),
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
                      validator: (valor) {
                        return Validador()
                            .add(Validar.OBRIGATORIO,
                                msg: "Este campo é obrigatório!")
                            .add(Validar.EMAIL, msg: "E-mail não é valido!")
                            .valido(valor);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      controller: _controllerSenha,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                        labelText: "Senha",
                        prefixIcon: Icon(Icons.https),
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
                      validator: (valor) {
                        return Validador()
                            .add(Validar.OBRIGATORIO,
                                msg: "Este campo é obrigatório!")
                            .valido(valor);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: RaisedButton(
                        child: Text(
                          "Entrar",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        color: Colors.blueAccent,
                        padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _irParaEscolhaTurma();
                          }
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: RaisedButton(
                      child: Text(
                        "Primeiro Acesso",
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 20),
                      ),
                      color: Colors.white,
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {
                       // _irParaEscolhaTurma();
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(150),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
