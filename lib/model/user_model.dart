class UserModel {
  final String id;
  final String name;
  final String passWord;
  final String imgUrl;
  final DateTime createDate;

  UserModel({
    required this.id,
    required this.name,
    required this.passWord,
    required this.imgUrl,
    required this.createDate,
  });

  factory UserModel.fromJson(String id, Map<String, dynamic> userData) {
    var model = UserModel(
      id: id,
      name: userData['name'] as String,
      passWord: userData['password'] as String,
      imgUrl: userData['image'] as String,
      createDate:
          DateTime.tryParse(userData['createdAt'] as String) ?? DateTime.now(),
    );

    return model;
  }
}
