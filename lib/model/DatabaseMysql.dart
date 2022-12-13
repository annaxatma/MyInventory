part of 'Model.dart';

class Mysql {
  static String host = 'localhost',
      user = 'root',
      password = '',
      db = 'My_inventory';
  static int port = 3306;

  Mysql();

  Future<MySqlConnection> getConnection() async {
    var settings = new ConnectionSettings(
        host: host, port: port, user: user, password: password, db: db);
    return await MySqlConnection.connect(settings);
  }
}
