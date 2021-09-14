import 'package:cmei/Model/AvisosFuncModel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class AvisosDAO {
  static AvisosDAO _avisosDAO = AvisosDAO._internal();
  Database _db;
  factory AvisosDAO() {
    return _avisosDAO;
  }
  AvisosDAO._internal(){}

  get db async{
    if (_db != null){
      return _db;
    } else{
      _db = await _inicializaDB();
      return _db;
    }
  }
 
  _onCreate(Database db, int version) async {
    String url =
        "CREATE TABLE avisosFun (id INTEGER PRIMARY KEY AUTOINCREMENT, titulo VARCHAR, descricao VARCHAR, data DETETIME)";
    await db.execute(url);
  }

  _inicializaDB() async {
    final caminhoBancoDados = await getDatabasesPath();
    final localBancoDados = join(caminhoBancoDados, "banco_avisosFun.db");
    var db =
        await openDatabase(localBancoDados, onCreate: _onCreate, version: 1);
    return db;
  }

  Future<int> salvarAvisos(AvisosFun avisosFun) async {
    var bancoDados = await db;
    int resultado = await bancoDados.insert("avisosFun", avisosFun.toMap());
    return resultado;
  }
  recuperarAvisos() async{
    var bancoDados = await db;
    String url = "SELECT * FROM avisosFun ORDER BY data DESC";
    List avisosFun = await bancoDados.rawQuery(url);
    return avisosFun;
  }
  Future<int> removerAvisos(int id) async {
    var bancoDados = await db;
   return await bancoDados.delete("avisosFun", where: "id = ?", whereArgs: [id]);
  }
}
