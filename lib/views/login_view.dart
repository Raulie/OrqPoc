import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                TextField(
                  decoration: InputDecoration(hintText: 'Username'),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                SizedBox(height: 40),
                // DropdownButton(
                //   value: widget.dropdownValue,
                //   items: <String>['AppSync', 'Step Functions']
                //       .map<DropdownMenuItem<String>>((String value) {
                //     return DropdownMenuItem<String>(
                //       value: value,
                //       child: Text(value),
                //     );
                //   }).toList(),
                //   onChanged: (String newValue) {
                //     setState(() {
                //       widget.dropdownValue = newValue;
                //     });
                //   },
                // ),
                // SizedBox(height: 40),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/accounts');
                  },
                  child: Text('Sign In'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
