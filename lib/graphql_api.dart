// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.g.dart';

@JsonSerializable(explicitToJson: true)
class CustomersData with EquatableMixin {
  CustomersData();

  factory CustomersData.fromJson(Map<String, dynamic> json) =>
      _$CustomersDataFromJson(json);

  ModelCustomerConnection listCustomers;

  @override
  List<Object> get props => [listCustomers];
  Map<String, dynamic> toJson() => _$CustomersDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ModelCustomerConnection with EquatableMixin {
  ModelCustomerConnection();

  factory ModelCustomerConnection.fromJson(Map<String, dynamic> json) =>
      _$ModelCustomerConnectionFromJson(json);

  List<Customer> items;

  @override
  List<Object> get props => [items];
  Map<String, dynamic> toJson() => _$ModelCustomerConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Customer with EquatableMixin {
  Customer();

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  String id;

  String name;

  String lasName;

  String email;

  ModelAccountConnection accounts;

  @override
  List<Object> get props => [id, name, lasName, email, accounts];
  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ModelAccountConnection with EquatableMixin {
  ModelAccountConnection();

  factory ModelAccountConnection.fromJson(Map<String, dynamic> json) =>
      _$ModelAccountConnectionFromJson(json);

  List<Account> items;

  @override
  List<Object> get props => [items];
  Map<String, dynamic> toJson() => _$ModelAccountConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Account with EquatableMixin {
  Account();

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  int balance;

  String id;

  @override
  List<Object> get props => [balance, id];
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}

class CustomersDataQuery extends GraphQLQuery<CustomersData, JsonSerializable> {
  CustomersDataQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'CustomersData'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'listCustomers'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'items'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'lasName'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'email'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'accounts'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'items'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'balance'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'id'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ]))
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'CustomersData';

  @override
  List<Object> get props => [document, operationName];
  @override
  CustomersData parse(Map<String, dynamic> json) =>
      CustomersData.fromJson(json);
}
