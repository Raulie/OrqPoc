import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
  String dropdownValue = 'AppSync';
}

class _LoginViewState extends State<LoginView> {
  ButtonState buttonState = ButtonState.idle;

  @override
  Widget build(BuildContext context) {
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
                      value: widget.dropdownValue,
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
                          widget.dropdownValue = newValue;
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
                        ),
                        SizedBox(height: 20),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(hintText: 'Password'),
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
  }
}
