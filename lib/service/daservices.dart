part of 'services.dart';

class Daservices {
  static Future<http.Response> getData() {
    return http.post(
      Uri.https(Const.baseUrl, "/api/Items"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
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
}
