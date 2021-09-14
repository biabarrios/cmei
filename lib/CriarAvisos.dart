import 'package:cmei/AvisosFunc.dart';
import 'package:flutter/material.dart';
import 'package:cmei/DAO/AvisosDAO.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:cmei/Model/AvisosFuncModel.dart';
class CriarAviso extends StatefulWidget {
  @override
  _CriarAvisoState createState() => _CriarAvisoState();
}

class _CriarAvisoState extends State<CriarAviso> {
  TextEditingController _tituloController = TextEditingController();
  TextEditingController _descricaoController = TextEditingController();
  TextEditingController _dataController = TextEditingController();
  var _db = AvisosDAO();
  List<AvisosFun> _avisosFun = List<
      AvisosFun>(); // cria a lista para carregar na tela do app

  _salvar() async {
    String titulo = _tituloController.text;
    String descricao = _descricaoController.text;
    String data = DateTime.now().toString();

    AvisosFun avisosFun = AvisosFun(titulo, descricao, data);
    int resultado = await _db.salvarAvisos(_avisosFun);
    print("Dados Salvos" + resultado.toString());
    _tituloController.clear();
    _descricaoController.clear();
    _recuperar();
  }
  _abrirInicio() async{
  }
}

  _recuperar() async {
    List anotacoesRecuperadas = await _db.recuperarAnotacoes();
    List<AvisosFun> listaTemporaria = List<AvisosFun>();

    for (var item in anotacoesRecuperadas) {
      AvisosFun avisos = AvisosFun.fromMap(item);
      listaTemporaria.add(avisos);
    }
    setState(() {
      _avisosFun = listaTemporaria;
    });
    listaTemporaria = null;
  }
  _selecionaBotao() async {
  if (true) {
    Color(0xFF084C7C);

  }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1671ED),
        title: new Center(child: new Text("Avisos")),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Text(
              "Adicionar o titulo do aviso *",
              style: TextStyle(fontSize: 14),
            ),
            Row(
                children: <Widget>[
                  TextField(
                    controller: _tituloController,
                    decoration: InputDecoration(
                        labelText: "Titulo", hintText: "Digite um titulo..."),
                    autofocus: true,
                  ),
                ]
            ),
            Row(
                children: <Widget>[
                  TextField(
                    controller: _descricaoController,
                    decoration: InputDecoration(
                        labelText: "Descrição",
                        hintText: "Digite uma descrição..."),
                    autofocus: true,
                  ),
                ]
            ),
            Row(
                children: <Widget>[
                  TextField(
                    controller: _dataController,
                    decoration: InputDecoration(
                        labelText: "Data",
                        hintText: "__/__/____"),
                    autofocus: true,


                  ),
                ]
            ),
            Row(
              children: <Widget>[
                FlatButton(
                    color: Color(0xFFE7E7E7),
                    onPressed: () {
                      _selecionaBotao();
                    },
                    child: Text("Normal")),
                FlatButton(
                    color: Color(0xFFE7E7E7),
                    onPressed: (){
                      _selecionaBotao();
                    },
                    child: Text("Alerta")),
                FlatButton(
                    color: Color(0xFFE7E7E7),
                    onPressed: (){
                      _selecionaBotao();
                    },
                    child: Text("Emergencia")),
                FlatButton(
                  color: Color(0xFF2F80ED),
                    onPressed: () {
                      _salvar(),
                      Navigator.pop( context,
                          MaterialPageRoute(
                            builder: (context) => AvisosFunc(),
                          ));
                    },
                    child: Text("Salvar")),
              ],

            ),
          ],
        ),
      ),
    );
  }