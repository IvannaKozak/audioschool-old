import 'package:audioschool/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:audioschool/constants.dart';

class BooksScreen extends StatefulWidget {
  const BooksScreen({Key? key}) : super(key: key);

  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

enum SchoolClass { five, six, seven, eight, nine, ten, eleven, twelve }

List<bool> _selections = [true, false, false, false];

class _BooksScreenState extends State<BooksScreen> {
  // SchoolClass selectclass;
  List<bool> _hasBeenPressed = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF213d6e),
      appBar: AppBar(
        title: Text('AudioSchool'),
        backgroundColor: Color(0xFF14284B),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        backgroundColor:
                            _hasBeenPressed[0] ? kInactiveColor : kActiveColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(width: 1.0, color: Colors.white)),
                        fixedSize: Size.fromWidth(110),
                      ),
                      onPressed: () => {
                        setState(() {
                          _hasBeenPressed[0] = !_hasBeenPressed[0];
                        })
                      },
                      child: Text(
                        '9 клас',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        // backgroundColor: Color(0xFFD9D9D9),
                        backgroundColor:
                            _hasBeenPressed[1] ? kInactiveColor : kActiveColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(color: Color(0xFFD9D9D9))),
                        fixedSize: Size.fromWidth(110),
                      ),
                      onPressed: () => {
                        setState(() {
                          _hasBeenPressed[1] = !_hasBeenPressed[1];
                        })
                      },
                      child: Text(
                        '10 клас',
                        style: TextStyle(
                            color: Color(0xFF726565),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        backgroundColor:
                            _hasBeenPressed[2] ? kInactiveColor : kActiveColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(width: 0.0, color: Colors.white)),
                        fixedSize: Size.fromWidth(110),
                      ),
                      onPressed: () => {
                        setState(() {
                          _hasBeenPressed[2] = !_hasBeenPressed[2];
                        })
                      },
                      child: Text(
                        '11 клас',
                        style: TextStyle(
                            color: Color(0xFF726565),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        backgroundColor:
                            _hasBeenPressed[3] ? kInactiveColor : kActiveColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(width: 0.0, color: Colors.white)),
                        fixedSize: Size.fromWidth(110),
                      ),
                      onPressed: () => {
                        setState(() {
                          _hasBeenPressed[3] = !_hasBeenPressed[3];
                        })
                      },
                      child: Text(
                        '12 клас',
                        style: TextStyle(
                            color: Color(0xFF726565),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: BookCard(
                      bookImage:
                          Image(image: AssetImage('images/history_1.jpg')),
                      bookTitle: 'Історія України 9 клас',
                      bookAuthor: 'О.В. Гісем, О.О. Мартинюк',
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: BookCard(
                      bookImage:
                          Image(image: AssetImage('images/history_1.jpg')),
                      bookTitle: 'Біологія 10 клас',
                      bookAuthor: 'О.В. Гісем, О.О. Мартинюк',
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: BookCard(
                      bookImage:
                          Image(image: AssetImage('images/history_1.jpg')),
                      bookTitle: 'Історія України 9 клас',
                      bookAuthor: 'О.В. Гісем, О.О. Мартинюк',
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: BookCard(
                      bookImage:
                          Image(image: AssetImage('images/history_1.jpg')),
                      bookTitle: 'Алгебра 11 клас',
                      bookAuthor: 'О.В. Гісем, О.О. Мартинюк',
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  BookCard(
      {required this.bookImage,
      required this.bookTitle,
      required this.bookAuthor});
  final Image bookImage;
  final String bookTitle;
  final String bookAuthor;

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
        onPressed: () {},
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
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Column(
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
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Слухати',
                          style: TextStyle(color: Color(0xFFFDDC50)),
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0xFFFDDC50),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
