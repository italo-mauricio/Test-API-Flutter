class UserType {
  String id = "";
  String name = "";
  UserType({
    required this.id,
    required this.name,
  });

  toMap() {}

  static fromMap(Map<String, dynamic> x) {}
}
