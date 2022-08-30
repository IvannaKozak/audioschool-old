import 'package:audioschool/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:audioschool/constants.dart';
// import 'package:audioschool/screens/chapter_screen.dart';

class BookCard extends StatelessWidget {
  BookCard(
      {required this.bookImage,
      required this.bookTitle,
      required this.bookAuthor,
      required this.onTap});
  final Image bookImage;
  final String bookTitle;
  final String bookAuthor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        fixedSize: Size.fromHeight(170),
        backgroundColor: Color(0xFF14284B),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(width: 1.0, color: Colors.white)),
      ),
      onPressed: onTap(),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0)),
                child: bookImage),
            SizedBox(
              width: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(bookTitle,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    bookAuthor,
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const <Widget>[
                          //Change to aling
                          // SizedBox(
                          //   width: 80,
                          // ),
                          Text(
                            'Слухати',
                            style: TextStyle(
                                color: Color(0xffFDDC50),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xffFDDC50),
                          )
                        ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
