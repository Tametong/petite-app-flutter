import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String amount;
  final String currency;

  const TransactionTile({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.currency,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        child: ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(subtitle),
          trailing: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: '-$amount',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                TextSpan(
                  text: ' $currency',
                  style: const TextStyle(color: Colors.black38),
                ),
              ],
            ),
          ),
          tileColor: Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
      )

    );
  }
}
