// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login _$LoginFromJson(Map<String, dynamic> json) {
  return Login()
    ..loginArmando = json['loginArmando'] == null
        ? null
        : Session.fromJson(json['loginArmando'] as Map<String, dynamic>);
}

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'loginArmando': instance.loginArmando?.toJson(),
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

Accounts _$AccountsFromJson(Map<String, dynamic> json) {
  return Accounts()
    ..getAccounts = (json['getAccounts'] as List)
        ?.map((e) =>
            e == null ? null : Account.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$AccountsToJson(Accounts instance) => <String, dynamic>{
      'getAccounts': instance.getAccounts?.map((e) => e?.toJson())?.toList(),
    };

Account _$AccountFromJson(Map<String, dynamic> json) {
  return Account()
    ..accountId = json['accountId'] as String
    ..accountType = json['accountType'] == null
        ? null
        : AccountType.fromJson(json['accountType'] as Map<String, dynamic>)
    ..balance = json['balance'] as int
    ..institutionName = json['institutionName'] as String;
}

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'accountId': instance.accountId,
      'accountType': instance.accountType?.toJson(),
      'balance': instance.balance,
      'institutionName': instance.institutionName,
    };

AccountType _$AccountTypeFromJson(Map<String, dynamic> json) {
  return AccountType()..status = json['status'] as String;
}

Map<String, dynamic> _$AccountTypeToJson(AccountType instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

GetAccountsInput _$GetAccountsInputFromJson(Map<String, dynamic> json) {
  return GetAccountsInput()..sessionId = json['sessionId'] as String;
}

Map<String, dynamic> _$GetAccountsInputToJson(GetAccountsInput instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
    };

AccountsArguments _$AccountsArgumentsFromJson(Map<String, dynamic> json) {
  return AccountsArguments(
    input: json['input'] == null
        ? null
        : GetAccountsInput.fromJson(json['input'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AccountsArgumentsToJson(AccountsArguments instance) =>
    <String, dynamic>{
      'input': instance.input?.toJson(),
    };
