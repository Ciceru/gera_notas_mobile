class Clientes {
  int id;
  String nome;
  String cnpj;

  Clientes(int id, String nome, String cnpj) {
    this.id = id;
    this.nome = nome;
    this.cnpj = cnpj;
  }

  Clientes.fromJson(Map json)
      : id = json['id'],
        nome = json['nome'],
        cnpj = json['cnpj'];
//         telefone = json['telefone'],
//         email = json['email'];
}
