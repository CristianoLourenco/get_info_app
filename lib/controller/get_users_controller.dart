import 'dart:convert';

import 'package:get_info_app/model/user_model.dart';
import 'package:http/http.dart' as http;

class GetUsersController {
  Future<void> getaAllUsers() async {
    final users = <UserModel>[];
    final mockApiResponse = await http.get(Uri.tryParse(
            'https://65527d4c5c69a779032a1a48.mockapi.io/getinfoapp/users') ??
        Uri());

    try {
      final data = jsonDecode(mockApiResponse.body);
      for (var user in data) {
        final model =
            UserModel.fromJson(user['id'] ?? '', user as Map<String, dynamic>);
        users.add(model);
      }
    } catch (e) {
      throw Exception('error: $e');
    }
  }
}
