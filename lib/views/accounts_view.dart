import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orq_poc/widgets/account_title.dart';
import 'package:provider/provider.dart';

class AccountsView extends StatefulWidget {
  @override
  _AccountsViewState createState() => _AccountsViewState();
}

class _AccountsViewState extends State<AccountsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accounts'),
        backgroundColor: Color(0xFF001D3B),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              color: Colors.white,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AccountTile(
                    amount: '\$50.00',
                    name: 'MultiCuenta Popular',
                    number: 'x5484',
                  ),
                  _buildDivider(),
                  AccountTile(
                    amount: '\$35,450.85',
                    name: 'Ahorro Popular',
                    number: 'x8957',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
      child: Container(
        height: 1,
        width: double.infinity,
        color: Colors.grey[300],
      ),
    );
  }
}
