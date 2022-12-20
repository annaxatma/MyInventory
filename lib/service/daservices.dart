part of 'services.dart';

class Daservices {
  static Future<List<ItemData>> getData() async {
    dynamic data = await http.get(
      Uri.https(Const.baseUrl, "/api/Items"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    var get = json.decode(data.body);
    List<ItemData> terima = [];

    terima = (get["data"] as List).map((e) => ItemData.fromJson(e)).toList();

    return terima;
  }

  static Future<http.Response> setData(
      dynamic item_name, dynamic item_id, dynamic item_description) async {
    var response = await http.post(
      Uri.https(Const.baseUrl, "/api/Items"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'item_name': item_name,
        'item_id': item_id,
        'item_description': item_description,
      }),
    );
    dynamic resp;
    if (response.statusCode == 200) {
      resp = "Success";
    }

    return resp;
  }

  static Future<List<User>> Login(dynamic email, dynamic password) async {
    var response = await http.post(
      Uri.https(Const.baseUrl, "/api/users/login"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{'email': email, 'password': password}),
    );
    dynamic resp = jsonDecode(response.body);
    List<User> terima = [];
    if (response.statusCode == 200) {
      terima = (resp["data"] as List).map((e) => User.fromJson(e)).toList();
    }
    return terima;
  }
}
