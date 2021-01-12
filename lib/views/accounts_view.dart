import 'package:flutter/material.dart';
import 'package:orq_poc/widgets/account_tile.dart';

class AccountsView extends StatefulWidget {
  @override
  _AccountsViewState createState() => _AccountsViewState();
}

class _AccountsViewState extends State<AccountsView> {
  List<Account> accounts = [
    Account(
      amount: '\$50.00',
      name: 'MultiCuenta Popular',
      number: 'x5484',
    ),
    Account(
      amount: '\$35,450.85',
      name: 'Ahorro Popular',
      number: 'x8957',
    ),
  ];
  @override
  Widget build(BuildContext context) {
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
            child: Card(
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
            ),
          ),
        ),
      ),
    );
  }
}
