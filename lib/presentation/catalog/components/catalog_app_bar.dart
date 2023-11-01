import 'package:flutter/material.dart';

class CatalogAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [
          Text(
            '목록',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
