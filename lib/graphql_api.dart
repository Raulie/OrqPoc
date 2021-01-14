// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.g.dart';

@JsonSerializable(explicitToJson: true)
class Login with EquatableMixin {
  Login();

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  Session loginArmando;

  @override
  List<Object> get props => [loginArmando];
  Map<String, dynamic> toJson() => _$LoginToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Session with EquatableMixin {
  Session();

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);

  String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$SessionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserLoginInput with EquatableMixin {
  UserLoginInput();

  factory UserLoginInput.fromJson(Map<String, dynamic> json) =>
      _$UserLoginInputFromJson(json);

  String username;

  String password;

  @override
  List<Object> get props => [username, password];
  Map<String, dynamic> toJson() => _$UserLoginInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LoginArguments extends JsonSerializable with EquatableMixin {
  LoginArguments({this.input});

  factory LoginArguments.fromJson(Map<String, dynamic> json) =>
      _$LoginArgumentsFromJson(json);

  final UserLoginInput input;

  @override
  List<Object> get props => [input];
  Map<String, dynamic> toJson() => _$LoginArgumentsToJson(this);
}

class LoginQuery extends GraphQLQuery<Login, LoginArguments> {
  LoginQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'Login'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'input')),
              type: NamedTypeNode(
                  name: NameNode(value: 'UserLoginInput'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'loginArmando'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'input'),
                    value: VariableNode(name: NameNode(value: 'input')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'Login';

  @override
  final LoginArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Login parse(Map<String, dynamic> json) => Login.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class Accounts with EquatableMixin {
  Accounts();

  factory Accounts.fromJson(Map<String, dynamic> json) =>
      _$AccountsFromJson(json);

  List<Account> getAccounts;

  @override
  List<Object> get props => [getAccounts];
  Map<String, dynamic> toJson() => _$AccountsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Account with EquatableMixin {
  Account();

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  String accountId;

  AccountType accountType;

  int balance;

  String institutionName;

  @override
  List<Object> get props => [accountId, accountType, balance, institutionName];
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AccountType with EquatableMixin {
  AccountType();

  factory AccountType.fromJson(Map<String, dynamic> json) =>
      _$AccountTypeFromJson(json);

  String status;

  @override
  List<Object> get props => [status];
  Map<String, dynamic> toJson() => _$AccountTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetAccountsInput with EquatableMixin {
  GetAccountsInput();

  factory GetAccountsInput.fromJson(Map<String, dynamic> json) =>
      _$GetAccountsInputFromJson(json);

  String sessionId;

  @override
  List<Object> get props => [sessionId];
  Map<String, dynamic> toJson() => _$GetAccountsInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AccountsArguments extends JsonSerializable with EquatableMixin {
  AccountsArguments({this.input});

  factory AccountsArguments.fromJson(Map<String, dynamic> json) =>
      _$AccountsArgumentsFromJson(json);

  final GetAccountsInput input;

  @override
  List<Object> get props => [input];
  Map<String, dynamic> toJson() => _$AccountsArgumentsToJson(this);
}

class AccountsQuery extends GraphQLQuery<Accounts, AccountsArguments> {
  AccountsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'Accounts'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'input')),
              type: NamedTypeNode(
                  name: NameNode(value: 'GetAccountsInput'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'getAccounts'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'input'),
                    value: VariableNode(name: NameNode(value: 'input')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'accountId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'accountType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'status'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'balance'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'institutionName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'Accounts';

  @override
  final AccountsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Accounts parse(Map<String, dynamic> json) => Accounts.fromJson(json);
}
