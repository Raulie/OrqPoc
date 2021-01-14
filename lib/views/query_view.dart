import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:orq_poc/graphql_api.dart';

class QueryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
    // return Query(
    //   options: QueryOptions(
    //     documentNode: CustomersDataQuery().document,
    //   ),
    //   builder: (
    //     QueryResult result, {
    //     Future<QueryResult> Function() refetch,
    //     FetchMore fetchMore,
    //   }) {
    //     if (result.hasException) {
    //       return Text(result.exception.toString());
    //     }
    //
    //     if (result.loading) {
    //       return const Center(
    //         child: CircularProgressIndicator(),
    //       );
    //     }
    //
    //     return Scaffold(
    //       appBar: AppBar(
    //         title: Text('AppSync vs Step Functions'),
    //         backgroundColor: Color(0xFF001D3B),
    //       ),
    //       body: Center(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: <Widget>[
    //             for (var customer
    //                 in CustomersData.fromJson(result.data).listCustomers.items)
    //               Text(
    //                 '${customer.name} ${customer.lasName} ${customer.email}',
    //                 style: TextStyle(
    //                   color: Color(0xFF001D3B),
    //                   fontWeight: FontWeight.bold,
    //                   fontSize: 20,
    //                   height: 2,
    //                 ),
    //               ),
    //             RaisedButton(
    //               onPressed: refetch,
    //               child: const Text('REFETCH'),
    //             ),
    //           ],
    //         ),
    //       ),
    //     );
    //   },
    // );
  }

  String getPrettyJSONString(Object jsonObject) {
    return const JsonEncoder.withIndent('  ').convert(jsonObject);
  }
}
