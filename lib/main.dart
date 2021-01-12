import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:orq_poc/providers/graphql_provider.dart';
import 'package:orq_poc/views/accounts_view.dart';
import 'package:orq_poc/views/login_view.dart';
import 'package:orq_poc/views/query_view.dart';

const graphqlEndpointUri =
    'https://veplnlc5cfdbpb36oyeyox446e.appsync-api.us-east-1.amazonaws.com/graphql';
const graphqlEndpointApiKey = 'da2-yk77rh6najgwpg3lgkhty3t2gi';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GraphqlClientProvider(
      uri: graphqlEndpointUri,
      apiKey: graphqlEndpointApiKey,
      child: MaterialApp(
        title: 'AppSync vs Step Functions',
        initialRoute: '/',
        routes: {
          '/': (context) => QueryView(),
          '/accounts': (context) => AccountsView(),
        },
        theme: ThemeData(
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );
  }
}
