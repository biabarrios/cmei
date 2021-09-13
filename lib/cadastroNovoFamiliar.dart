import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validadores/Validador.dart';
import 'package:cnpj_cpf_formatter/cnpj_cpf_formatter.dart';
import 'InicioFAM.dart';
import 'package:google_fonts/google_fonts.dart';

class CadastroNovoFamiliar extends StatefulWidget {
  @override
  _CadastroNovoFamiliarState createState() => _CadastroNovoFamiliarState();
}

class _CadastroNovoFamiliarState extends State<CadastroNovoFamiliar> {
  bool _termoUso = false;
  final _formKey = GlobalKey<FormState>();


  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerCPF = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  TextEditingController _controllerSenhaValidacao = TextEditingController();

  void _irParaInicioFAM() {
    //Navegação de tela
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => InicioFam()));
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
              Colors.lightGreen,
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
                    padding: EdgeInsets.all(6),
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
                        "Primeiro acesso",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      controller: _controllerNome,
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                        hintText: "Nome Completo",
                        fillColor: Colors.grey,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
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
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      controller: _controllerCPF,
                      keyboardType: TextInputType.text,
                      inputFormatters: [
                        CnpjCpfFormatter(
                          eDocumentType: EDocumentType.CPF,
                        )
                      ],
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                        hintText: "CPF",
                        fillColor: Colors.grey,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      validator: (valor) {
                        return Validador()
                            .add(Validar.OBRIGATORIO,
                                msg: "Este campo é obrigatório!")
                            .add(Validar.CPF, msg: "CPF não é valido!")
                            .valido(valor);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      controller: _controllerEmail,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                        hintText: "E-mail",
                        fillColor: Colors.grey,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
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
                        contentPadding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                        hintText: "Senha",
                        fillColor: Colors.grey,
                        filled: true,

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
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
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      controller: _controllerSenhaValidacao,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                        hintText: "Adicionar senha novamente",
                        fillColor: Colors.grey,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      validator: (valor) {
                        return Validador()
                            .add(Validar.OBRIGATORIO,
                                msg: "Este campo é obrigatório!")
                            .valido(valor);
                      },
                    ),
                  ),

                  CheckboxListTile(
                    title: Center(
                      child: Text("Li e aceito os termos de uso"),
                    ),
                    activeColor: Colors.black,
                    selected: false,
                    value: _termoUso,
                    onChanged: (bool valor) {
                      setState(() {
                        _termoUso = valor;
                      });
                    },

                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: RaisedButton(
                      child: Text(
                        "Cadastrar",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      color: Colors.lightGreen,
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _irParaInicioFAM();
                        }

                      },
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
