import 'dart:convert';

class UserModel {
  final String email;
  final String name;
  final String profilePic;
  final String token;
  final String uuid;
  UserModel({
    required this.email,
    required this.name,
    required this.profilePic,
    required this.token,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "email": email,
      "name": name,
      "profilePic": profilePic,
      "token": token,
      "uuid": uuid,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map["email"],
      name: map["name"],
      profilePic: map["profilePic"],
      token: map["token"],
      uuid: map["_id"],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  UserModel copyWith({
    String? email,
    String? name,
    String? profilePic,
    String? token,
    String? uuid,
  }) {
    return UserModel(
      email: email ?? this.email,
      name: name ?? this.name,
      profilePic: profilePic ?? this.profilePic,
      token: token ?? this.token,
      uuid: uuid ?? this.uuid,
    );
  }
}
