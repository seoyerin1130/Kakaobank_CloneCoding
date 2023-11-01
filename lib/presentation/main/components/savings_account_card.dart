import 'package:flutter/material.dart';

class SavingsAccountCard extends StatelessWidget {
  final Color color;

  const SavingsAccountCard({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 160,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "세이프 박스",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "7777-02-1410122",
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.black.withOpacity(0.4)),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.more_vert,
                      size: 25,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              '9,999,999원',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
