class AvisosFun{
  int id;
  String titulo;
  String descricao;
  String data;

  AvisosFun(this.titulo, this.descricao, this.data); // Inicializa o construtor

  AvisosFun.fromMap(Map map){ // cria um carquivo map com os atributos
    this.id = map["id"];
    this.titulo = map["titulo"];
    this.descricao = map["descricao"];
    this.data = map["data"];
  }

  Map toMap() {
    // Map convertido para String, obrigatorio
    Map <String, dynamic> map = {
      "titulo": this.titulo,
      "descricao": this.descricao,
      "data": this.data
    };


    if (this.id != null) {
      map["id"] = this.id;
    }
    return map;
  }
}