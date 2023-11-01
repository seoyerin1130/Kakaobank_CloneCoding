import 'package:flutter/material.dart';

class MoreButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff2b3044),
      ),
      child: Icon(
        Icons.add,
        size: 35,
        color: Color(0xff616e7a),
      ),
    );
  }
}
