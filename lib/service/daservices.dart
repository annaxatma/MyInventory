part of 'services.dart';

class Daservices {
  static Future<List<ItemData>> getData(dynamic id_user) async {
    dynamic data = await http.get(
      Uri.https(Const.baseUrl, "/api/Items/" + id_user),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    var get = json.decode(data.body);
    List<ItemData> got = [];

    got = (get["data"] as List).map((e) => ItemData.fromJson(e)).toList();

    return got;
  }

  static void setData(dynamic item_name, dynamic id_user, dynamic item_quantity,
      dynamic item_description) async {
    var response = await http.post(
      Uri.https(Const.baseUrl, "/api/Items"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'name': item_name,
        'quantity': item_quantity,
        'description': item_description,
        'id_user': id_user
      }),
    );
    var get = json.decode(response.body);
  }

  static void updateData(dynamic item_name, dynamic item_quantity,
      dynamic item_id, dynamic item_description) async {
    var response = await http.put(
      Uri.https(Const.baseUrl, "/api/Items"),
      headers: {
        'Content-Type': "application/x-www-form-urlencoded",
      },
      encoding: Encoding.getByName('utf-8'),
      body: {
        'item_id': item_id,
        'name': item_name,
        'quantity': item_quantity,
        'description': item_description
      },
    );
    var get = json.decode(response.body);
  }

  static void deleteData(dynamic item_id) async {
    var response = await http.delete(
      Uri.https(Const.baseUrl, "/api/Items"),
      headers: {
        'Content-Type': "application/x-www-form-urlencoded",
      },
      encoding: Encoding.getByName('utf-8'),
      body: {
        'item_id': item_id,
      },
    );
    var get = json.decode(response.body);
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
