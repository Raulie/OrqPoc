import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:orq_poc/graphql_api.dart';
import 'package:orq_poc/providers/graphql_provider.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  ButtonState buttonState = ButtonState.idle;

  String dropdownValue = 'AppSync';
  String username = '';
  String password = '';

  GraphQLClient graphqlClient;

  @override
  Widget build(BuildContext context) {
    return GraphQLConsumer(
      builder: (GraphQLClient client) {
        graphqlClient = client;
        return Scaffold(
          appBar: AppBar(
            title: Text('AppSync vs Step Functions'),
            backgroundColor: Color(0xFF001D3B),
          ),
          body: Center(
            child: SafeArea(
              top: false,
              bottom: true,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: Icon(Icons.keyboard_arrow_down),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(color: Color(0xFF001D3B)),
                          underline: Container(
                            height: 2,
                            color: Color(0xFF001D3B),
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>['AppSync', 'Step Functions']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(hintText: 'Username'),
                              onChanged: (input) {
                                username = input.trim();
                              },
                            ),
                            SizedBox(height: 20),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(hintText: 'Password'),
                              onChanged: (input) {
                                password = input.trim();
                              },
                            ),
                            // SizedBox(height: 40),
                            // RaisedButton(
                            //   onPressed: () {
                            //     Navigator.pushNamed(context, '/accounts');
                            //   },
                            //   child: Text('Sign In'),
                            // )
                          ]),
                    ),
                    Expanded(
                      flex: 1,
                      child: SafeArea(
                        bottom: true,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [_buildButton()],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildButton() {
    return ProgressButton.icon(iconedButtons: {
      ButtonState.idle: IconedButton(
        text: "Sign On",
        color: Color(0xFF001D3B),
        icon: Icon(Icons.login, color: Colors.white),
      ),
      ButtonState.loading: IconedButton(
        text: "Loading",
        color: Color(0xFF001D3B),
      ),
      ButtonState.fail: IconedButton(
          text: "Failed",
          icon: Icon(Icons.cancel, color: Colors.white),
          color: Colors.red.shade300),
      ButtonState.success: IconedButton(
          text: "Success",
          icon: Icon(
            Icons.check_circle,
            color: Colors.white,
          ),
          color: Colors.green.shade400)
    }, onPressed: onPressedButton, state: buttonState);
  }

  void onPressedButton() {
    setState(() {
      if (buttonState == ButtonState.idle) {
        buttonState = ButtonState.loading;
      }
    });

    var input = UserLoginInput();
    input.username = username;
    input.password = password;

    graphqlClient.mutate(
      MutationOptions(
          documentNode: LoginQuery().document,
          variables: <String, dynamic>{
            'input': input,
          },
          onError: (OperationException error) {
            print(error.toString());
            if (error.graphqlErrors.isNotEmpty) {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text("Login Error"),
                  content: Text(error.graphqlErrors[0].message),
                  actions: <Widget>[
                    FlatButton(
                      child: Text('OK'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ),
              );
            }
          },
          onCompleted: (dynamic resultData) {
            print(resultData);

            setState(() {
              buttonState = ButtonState.idle;
            });
          }),
    );
  }
}
