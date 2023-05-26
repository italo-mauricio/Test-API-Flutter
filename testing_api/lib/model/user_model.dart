import 'dart:convert';
import 'package:testing_api/model/user_types.dart';

class UserModel {
  String id = "";
  String name = "";
  String username = "";
  List<UserType> types;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.types,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'types': types.map((x) => x.toMap()).toList(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      name: map['name'] as String,
      username: map['username'] as String,
      types: List<UserType>.from(
        (map['types'] as List<dynamic>).map(
          (x) => UserType.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
