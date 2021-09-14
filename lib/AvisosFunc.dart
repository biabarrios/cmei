import 'package:cmei/CriarAvisos.dart';
import 'package:cmei/DAO/AvisosDAO.dart';
import 'package:cmei/Model/AvisosFuncModel.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class AvisosFunc extends StatefulWidget {
  @override
  _AvisosFuncState createState() => _AvisosFuncState();
}

class _AvisosFuncState extends State<AvisosFunc> {
  TextEditingController _tituloController = TextEditingController();
  TextEditingController _descricaoController = TextEditingController();
  var _db = AvisosDAO();
  List<AvisosFun> _avisos = List<
      AvisosFun>(); // cria a lista de anotações pata carregar na tela do app



  _recuperar() async {
    List avisosRecuperados = await _db.recuperarAvisos();
    List<AvisosFun> listaTemporaria = List<AvisosFun>();

    for (var item in avisosRecuperados) {
      AvisosFun avisosFun = AvisosFun.fromMap(item);
      listaTemporaria.add(avisosFun);
    }
    setState(() {
      _avisos = listaTemporaria;
    });
    listaTemporaria = null;
  }

  _remover(int id) async {
    await _db.removerAvisos(id);
    setState(() {
      _recuperar();
    });
  }

  _formatarData(String data) {
    initializeDateFormatting("pt_BR");
    var formatador = DateFormat.yMd("pt_BR");
    DateTime dataConvertida = DateTime.parse(data);
    String _dataFormatada = formatador.format(dataConvertida);
    return _dataFormatada;
  }

  @override
  void initSate() {
    super.initState();
    _recuperar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1671ED),
        title: new Center(child: new Text("Avisos")),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
            Padding(
              padding: EdgeInsets.all(90),
               child: GestureDetector(
                child: Image.asset("Imagen/AlunoFun.png"),
                 onTap: (){
                  //método executavel;
                  },
                ),
              ),
             Expanded(

                child:  FloatingActionButton(
                backgroundColor: Color(0xFF1671ED),
                 foregroundColor: Colors.white,
                  child: Icon(Icons.add),
                onPressed: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CriarAviso(),
                      ));
                },
              ),
               ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                  itemCount: _avisos.length,
                  itemBuilder: (context, index) {
                    final avisos = _avisos[index];
                    return Card(
                      child: ListTile(
                        title: Text(avisos.titulo),
                        subtitle: Text(
                            "${_formatarData(avisos.data)} - ${avisos.descricao}"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                _remover(avisos.id);
                              },
                              child: Icon(
                                Icons.remove_circle,
                                color: Colors.red,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),

    );
  }
}

