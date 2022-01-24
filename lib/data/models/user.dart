
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';
@JsonSerializable(explicitToJson: true)
class User {
  int id;
  String username;
  String password;

  User({this.id, this.username, this.password});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}