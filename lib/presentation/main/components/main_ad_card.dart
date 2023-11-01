import 'package:flutter/material.dart';

class MainAdCard extends StatelessWidget {
  final String title;
  final String content;

  const MainAdCard({Key? key, required this.title, required this.content}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: 70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("title", style: TextStyle(
                  fontWeight: FontWeight.w500,

                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(content, style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
            Spacer(),
            CircleAvatar(
              backgroundImage: NetworkImage('https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fko%2F4%2F4a%2F%25EC%258B%25A0%25EC%25A7%25B1%25EA%25B5%25AC.png&tbnid=h8vTF82u0CRIVM&vet=12ahUKEwijsI2rraCCAxWRdHAKHbtnApcQMygAegQIARBK..i&imgrefurl=https%3A%2F%2Fko.wikipedia.org%2Fwiki%2F%25EC%258B%25A0%25EC%25A7%25B1%25EA%25B5%25AC&docid=Tsv59MpzadoVlM&w=259&h=320&q=%EC%A7%B1%EA%B5%AC&ved=2ahUKEwijsI2rraCCAxWRdHAKHbtnApcQMygAegQIARBK'),
            ),
          ],
        ),
      ),
    );
  }
}
