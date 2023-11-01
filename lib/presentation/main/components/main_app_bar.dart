import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [
          Text("서예린", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          ),
          SizedBox(width: 5.0,),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: Color(0xff2b3044),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text('내 계좌',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),

          ),
          Spacer(),
          CircleAvatar(
            backgroundImage: NetworkImage('https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fko%2F4%2F4a%2F%25EC%258B%25A0%25EC%25A7%25B1%25EA%25B5%25AC.png&tbnid=h8vTF82u0CRIVM&vet=12ahUKEwijsI2rraCCAxWRdHAKHbtnApcQMygAegQIARBK..i&imgrefurl=https%3A%2F%2Fko.wikipedia.org%2Fwiki%2F%25EC%258B%25A0%25EC%25A7%25B1%25EA%25B5%25AC&docid=Tsv59MpzadoVlM&w=259&h=320&q=%EC%A7%B1%EA%B5%AC&ved=2ahUKEwijsI2rraCCAxWRdHAKHbtnApcQMygAegQIARBK'),
          ),
        ],
      ),
    );
  }
}
