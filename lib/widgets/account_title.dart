import 'package:flutter/material.dart';

/// Represents a Retiro Movil Withdrawal Tile
class AccountTile extends StatelessWidget {
  const AccountTile({Key key, this.amount, this.name, this.number})
      : super(key: key);

  final String amount;
  final String name;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Color(0xFF001D3B),
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                SizedBox(width: 6),
                Text(
                  number,
                  style: TextStyle(
                    color: Color(0xFF20385C),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2),
            Text(
              amount,
              style: TextStyle(
                color: Color(0xFF2278C9),
                fontSize: 24,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
