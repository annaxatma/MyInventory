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
    List<ItemData> got = [];

    got = (get["data"] as List).map((e) => ItemData.fromJson(e)).toList();

    return got;
  }

  static void setData(dynamic item_name, int id_user, dynamic item_id,
      dynamic item_description) async {
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
    var get = json.decode(response.body);
    List<User> accept = [];

    accept = (get["data"] as List).map((e) => User.fromJson(e)).toList();
  }

  static Future<User> Login(dynamic email, dynamic password) async {
    var response = await http.post(
      Uri.https(Const.baseUrl, "/api/users/login"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{'email': email, 'password': password}),
    );
    dynamic resp = jsonDecode(response.body);
    List<User> got = [];
    if (response.statusCode == 200) {
      got = (resp["data"] as List).map((e) => User.fromJson(e)).toList();
    }
    User loggedUser =
        got.where((element) => element.userEmail == email).toList()[0];
    return loggedUser;
  }

  static Future<List<User>> getUser() async {
    dynamic data = await http.get(
      Uri.https(Const.baseUrl, "/api/users"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    var get = json.decode(data.body);
    List<User> got = [];

    got = (get["data"] as List).map((e) => User.fromJson(e)).toList();

    return got;
  }
}
