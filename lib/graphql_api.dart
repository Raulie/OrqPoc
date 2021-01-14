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

  Session login;

  @override
  List<Object> get props => [login];
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
              name: NameNode(value: 'login'),
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
