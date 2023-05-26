import 'dart:convert';
import 'dart:html';

import 'package:testing_api/model/user_model.dart';

import '../../../repository/i_user_repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllUsers() async {
    final response = await http.get('https://api-futebol.com.br/' as Uri);
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .toList();
  }
}
