// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login _$LoginFromJson(Map<String, dynamic> json) {
  return Login()
    ..login = json['login'] == null
        ? null
        : Session.fromJson(json['login'] as Map<String, dynamic>);
}

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'login': instance.login?.toJson(),
    };

Session _$SessionFromJson(Map<String, dynamic> json) {
  return Session()..id = json['id'] as String;
}

Map<String, dynamic> _$SessionToJson(Session instance) => <String, dynamic>{
      'id': instance.id,
    };

UserLoginInput _$UserLoginInputFromJson(Map<String, dynamic> json) {
  return UserLoginInput()
    ..username = json['username'] as String
    ..password = json['password'] as String;
}

Map<String, dynamic> _$UserLoginInputToJson(UserLoginInput instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

LoginArguments _$LoginArgumentsFromJson(Map<String, dynamic> json) {
  return LoginArguments(
    input: json['input'] == null
        ? null
        : UserLoginInput.fromJson(json['input'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LoginArgumentsToJson(LoginArguments instance) =>
    <String, dynamic>{
      'input': instance.input?.toJson(),
    };
