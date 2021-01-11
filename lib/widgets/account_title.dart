import 'package:flutter/material.dart';

/// Represents a Retiro Movil Withdrawal Tile
class AccountTile extends StatelessWidget {
  const AccountTile({Key key, this.account, this.separator}) : super(key: key);

  final Account account;
  final bool separator;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (separator) _buildSeparator(),
          Row(
            children: [
              Text(
                account.name,
                style: TextStyle(
                  color: Color(0xFF001D3B),
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              SizedBox(width: 6),
              Text(
                account.number,
                style: TextStyle(
                  color: Color(0xFF20385C),
                  fontSize: 13,
                ),
              ),
            ],
          ),
          SizedBox(height: 2),
          Text(
            account.amount,
            style: TextStyle(
              color: Color(0xFF2278C9),
              fontSize: 24,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSeparator() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: 1,
        width: double.infinity,
        color: Colors.grey[300],
      ),
    );
  }
}

class Account {
  final String name;
  final String number;
  final String amount;

  Account({this.name, this.number, this.amount});
}
