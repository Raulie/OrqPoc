import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orq_poc/views/accounts_view.dart';
import 'package:orq_poc/views/login_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppSync vs Step Functions',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginView(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/accounts': (context) => AccountsView(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
