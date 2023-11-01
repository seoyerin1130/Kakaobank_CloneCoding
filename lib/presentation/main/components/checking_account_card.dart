import 'package:flutter/material.dart';

class CheckingAccountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xfffae04b)),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          "서예린의 mini",
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
                  fontSize: 25,
                  color: Colors.black),
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  '이체',
                  textAlign: TextAlign.center,
                )),
                Text('|'),
                Expanded(
                    child: Text(
                  '카드이용내역',
                  textAlign: TextAlign.center,
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
