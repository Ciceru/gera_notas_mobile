class Produtos {
  int id;
  String nome;
  String unidadeMedida;
  double valorCusto;

  Produtos(int id, String nome, String unidadeMedida, double valorCusto) {
    this.id = id;
    this.nome = nome;
    this.unidadeMedida = unidadeMedida;
    this.valorCusto = valorCusto;
  }

  Produtos.fromJson(Map json)
      : id = json['id'],
        nome = json['nome'],
        unidadeMedida = json['unidadeMedida'],
        valorCusto = json['valorCusto'];
}
