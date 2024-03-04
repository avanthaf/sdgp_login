import 'package:mysql1/mysql1.dart';

class DatabaseHelper {
  late MySqlConnection _connection;

  Future<void> connect() async {
    _connection = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 43902,
      user: 'sdgp_logindb',
      password: 'Ra1nRa1ngoAway__',
      db: 'sdgp_login',
    ));
  }

  Future<void> close() async {
    await _connection.close();
  }

  Future<bool> login(String username, String password) async {
    var result = await _connection.query(
        'SELECT * FROM users WHERE username = ? AND password = ?',
        [username, password]);

    return result.isNotEmpty;
  }

  Future<void> registerUser(String firstName, String lastName, String username,
      String password) async {
    await _connection.query(
        'INSERT INTO users (first_name, last_name, username, password) VALUES (?, ?, ?, ?)',
        [firstName, lastName, username, password]);
  }
}
