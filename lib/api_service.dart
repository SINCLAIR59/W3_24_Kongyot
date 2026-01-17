import 'dart:convert';
import 'users_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<List<Users>> fetchUser() async {
    final response = await http.get(
      Uri.parse("https://696457dfe8ce952ce1f16fdc.mockapi.io/users"),
    );
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      print(response.statusCode);
      return data.map((e) => Users.fromJson(e)).toList();
    } else {
      throw Exception('หว่ายยยโหลดไม่ได้');
    }
  }
}
