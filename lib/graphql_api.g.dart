// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomersData _$CustomersDataFromJson(Map<String, dynamic> json) {
  return CustomersData()
    ..listCustomers = json['listCustomers'] == null
        ? null
        : ModelCustomerConnection.fromJson(
            json['listCustomers'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CustomersDataToJson(CustomersData instance) =>
    <String, dynamic>{
      'listCustomers': instance.listCustomers?.toJson(),
    };

ModelCustomerConnection _$ModelCustomerConnectionFromJson(
    Map<String, dynamic> json) {
  return ModelCustomerConnection()
    ..items = (json['items'] as List)
        ?.map((e) =>
            e == null ? null : Customer.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ModelCustomerConnectionToJson(
        ModelCustomerConnection instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return Customer()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..lasName = json['lasName'] as String
    ..email = json['email'] as String
    ..accounts = json['accounts'] == null
        ? null
        : ModelAccountConnection.fromJson(
            json['accounts'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lasName': instance.lasName,
      'email': instance.email,
      'accounts': instance.accounts?.toJson(),
    };

ModelAccountConnection _$ModelAccountConnectionFromJson(
    Map<String, dynamic> json) {
  return ModelAccountConnection()
    ..items = (json['items'] as List)
        ?.map((e) =>
            e == null ? null : Account.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ModelAccountConnectionToJson(
        ModelAccountConnection instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
    };

Account _$AccountFromJson(Map<String, dynamic> json) {
  return Account()
    ..balance = json['balance'] as int
    ..id = json['id'] as String;
}

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'balance': instance.balance,
      'id': instance.id,
    };
