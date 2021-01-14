import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:orq_poc/graphql_api.dart';
import 'package:orq_poc/widgets/account_tile.dart';

class AccountsView extends StatelessWidget {
  static const routeName = '/accounts';

  @override
  Widget build(BuildContext context) {
    final AccountsViewArguments args =
        ModalRoute.of(context).settings.arguments;

    var queryInput = GetAccountsInput();
    queryInput.sessionId = args.sessionId;

    return Scaffold(
      appBar: AppBar(
        title: Text('Accounts'),
        backgroundColor: Color(0xFF001D3B),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          bottom: true,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Query(
              options: QueryOptions(
                documentNode: AccountsQuery().document,
                variables: AccountsArguments(input: queryInput).toJson(),
              ),
              builder: (
                QueryResult result, {
                Future<QueryResult> Function() refetch,
                FetchMore fetchMore,
              }) {
                if (result.loading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                final accounts = Accounts.fromJson(result.data).getAccounts;

                return Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        for (int i = 0; i < accounts.length; i++)
                          AccountTile(
                            account: accounts[i],
                            separator: i != 0,
                          )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class AccountsViewArguments {
  final String sessionId;

  AccountsViewArguments({this.sessionId});
}
