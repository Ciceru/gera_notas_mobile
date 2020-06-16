import 'package:http/http.dart' as http;

const baseUrl = 'https://geranotas.herokuapp.com';

class API {
  static Future getPorodutos() async {
    var url = baseUrl + "/produtos";
    return await http.get(url);
  }

  static Future getClientes() async {
    var url = baseUrl + "/clientes";
    return await http.get(url);
  }
}
