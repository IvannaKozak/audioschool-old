import 'package:audioschool/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:audioschool/constants.dart';
import 'package:audioschool/books_card.dart';
import 'package:audioschool/screens/para_screen.dart';
// import 'package:audioschool/screens/chapter_screen.dart';

class UahistoryScreen extends StatefulWidget {
  const UahistoryScreen({Key? key}) : super(key: key);

  @override
  State<UahistoryScreen> createState() => _UahistoryScreenState();
}

enum SchoolClass { five, six, seven, eight, nine, ten, eleven, twelve }

List<bool> _selections = [true, false, false, false];

class _UahistoryScreenState extends State<UahistoryScreen> {
  // SchoolClass selectclass;
  List<bool> _hasBeenPressed = [
    false,
    true,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF213d6e),
      appBar: AppBar(
        title: Text('Історія України'),
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
                        //side: BorderSide(color: Colors.white, width: 5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: _hasBeenPressed[0]
                                ? kInactiveBorder
                                : kActiveBorder),
                        fixedSize: Size.fromWidth(110),
                      ),
                      onPressed: () => {
                        setState(() {
                          if (_hasBeenPressed[0] = !_hasBeenPressed[0]) {
                            _hasBeenPressed[0] = true;
                          } else {
                            _hasBeenPressed[0] = true;
                          }
                          _hasBeenPressed[1] = false;
                          _hasBeenPressed[2] = false;
                          _hasBeenPressed[3] = false;
                          _hasBeenPressed[4] = false;
                          _hasBeenPressed[5] = false;
                          _hasBeenPressed[6] = false;
                          _hasBeenPressed[7] = false;
                        })
                      },
                      child: Text(
                        '5 клас',
                        style: _hasBeenPressed[0] ? kActiveText : kInactiveText,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        backgroundColor:
                            _hasBeenPressed[1] ? kInactiveColor : kActiveColor,
                        //side: BorderSide(color: Colors.white, width: 5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: _hasBeenPressed[1]
                                ? kInactiveBorder
                                : kActiveBorder),
                        fixedSize: Size.fromWidth(110),
                      ),
                      onPressed: () => {
                        setState(() {
                          if (_hasBeenPressed[1] = !_hasBeenPressed[1]) {
                            _hasBeenPressed[1] = true;
                          } else {
                            _hasBeenPressed[1] = true;
                          }
                          _hasBeenPressed[0] = false;
                          _hasBeenPressed[2] = false;
                          _hasBeenPressed[3] = false;
                          _hasBeenPressed[4] = false;
                          _hasBeenPressed[5] = false;
                          _hasBeenPressed[6] = false;
                          _hasBeenPressed[7] = false;
                        })
                      },
                      child: Text(
                        '6 клас',
                        style: _hasBeenPressed[1] ? kActiveText : kInactiveText,
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
                        //side: BorderSide(color: Colors.white, width: 5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: _hasBeenPressed[2]
                                ? kInactiveBorder
                                : kActiveBorder),
                        fixedSize: Size.fromWidth(110),
                      ),
                      onPressed: () => {
                        setState(() {
                          if (_hasBeenPressed[2] = !_hasBeenPressed[2]) {
                            _hasBeenPressed[2] = true;
                          } else {
                            _hasBeenPressed[2] = true;
                          }
                          _hasBeenPressed[0] = false;
                          _hasBeenPressed[1] = false;
                          _hasBeenPressed[3] = false;
                          _hasBeenPressed[4] = false;
                          _hasBeenPressed[5] = false;
                          _hasBeenPressed[6] = false;
                          _hasBeenPressed[7] = false;
                        })
                      },
                      child: Text(
                        '7 клас',
                        style: _hasBeenPressed[2] ? kActiveText : kInactiveText,
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
                        //side: BorderSide(color: Colors.white, width: 5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: _hasBeenPressed[3]
                                ? kInactiveBorder
                                : kActiveBorder),
                        fixedSize: Size.fromWidth(110),
                      ),
                      onPressed: () => {
                        setState(() {
                          if (_hasBeenPressed[3] = !_hasBeenPressed[3]) {
                            _hasBeenPressed[3] = true;
                          } else {
                            _hasBeenPressed[3] = true;
                          }
                          _hasBeenPressed[0] = false;
                          _hasBeenPressed[1] = false;
                          _hasBeenPressed[2] = false;
                          _hasBeenPressed[4] = false;
                          _hasBeenPressed[5] = false;
                          _hasBeenPressed[6] = false;
                          _hasBeenPressed[7] = false;
                        })
                      },
                      child: Text(
                        '8 клас',
                        style: _hasBeenPressed[3] ? kActiveText : kInactiveText,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        backgroundColor:
                            _hasBeenPressed[4] ? kInactiveColor : kActiveColor,
                        //side: BorderSide(color: Colors.white, width: 5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: _hasBeenPressed[4]
                                ? kInactiveBorder
                                : kActiveBorder),
                        fixedSize: Size.fromWidth(110),
                      ),
                      onPressed: () => {
                        setState(() {
                          if (_hasBeenPressed[4] = !_hasBeenPressed[4]) {
                            _hasBeenPressed[4] = true;
                          } else {
                            _hasBeenPressed[4] = true;
                          }
                          _hasBeenPressed[0] = false;
                          _hasBeenPressed[1] = false;
                          _hasBeenPressed[2] = false;
                          _hasBeenPressed[3] = false;
                          _hasBeenPressed[5] = false;
                          _hasBeenPressed[6] = false;
                          _hasBeenPressed[7] = false;
                        })
                      },
                      child: Text(
                        '9 клас',
                        style: _hasBeenPressed[4] ? kActiveText : kInactiveText,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        backgroundColor:
                            _hasBeenPressed[5] ? kInactiveColor : kActiveColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: _hasBeenPressed[5]
                                ? kInactiveBorder
                                : kActiveBorder),
                        fixedSize: Size.fromWidth(110),
                      ),
                      onPressed: () => {
                        setState(() {
                          if (_hasBeenPressed[5] = !_hasBeenPressed[5]) {
                            _hasBeenPressed[5] = true;
                          } else {
                            _hasBeenPressed[5] = true;
                          }
                          _hasBeenPressed[0] = false;
                          _hasBeenPressed[1] = false;
                          _hasBeenPressed[2] = false;
                          _hasBeenPressed[3] = false;
                          _hasBeenPressed[4] = false;
                          _hasBeenPressed[6] = false;
                          _hasBeenPressed[7] = false;
                        })
                      },
                      child: Text(
                        '10 клас',
                        style: _hasBeenPressed[5] ? kActiveText : kInactiveText,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        backgroundColor:
                            _hasBeenPressed[6] ? kInactiveColor : kActiveColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: _hasBeenPressed[6]
                                ? kInactiveBorder
                                : kActiveBorder),
                        fixedSize: Size.fromWidth(110),
                      ),
                      onPressed: () => {
                        setState(() {
                          if (_hasBeenPressed[6] = !_hasBeenPressed[6]) {
                            _hasBeenPressed[6] = true;
                          } else {
                            _hasBeenPressed[6] = true;
                          }
                          _hasBeenPressed[0] = false;
                          _hasBeenPressed[1] = false;
                          _hasBeenPressed[2] = false;
                          _hasBeenPressed[3] = false;
                          _hasBeenPressed[4] = false;
                          _hasBeenPressed[5] = false;
                          _hasBeenPressed[7] = false;
                        })
                      },
                      child: Text(
                        '11 клас',
                        style: _hasBeenPressed[6] ? kActiveText : kInactiveText,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        backgroundColor:
                            _hasBeenPressed[7] ? kInactiveColor : kActiveColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: _hasBeenPressed[7]
                                ? kInactiveBorder
                                : kActiveBorder),
                        fixedSize: Size.fromWidth(110),
                      ),
                      onPressed: () => {
                        setState(() {
                          if (_hasBeenPressed[7] = !_hasBeenPressed[7]) {
                            _hasBeenPressed[7] = true;
                          } else {
                            _hasBeenPressed[7] = true;
                          }
                          _hasBeenPressed[0] = false;
                          _hasBeenPressed[1] = false;
                          _hasBeenPressed[2] = false;
                          _hasBeenPressed[3] = false;
                          _hasBeenPressed[4] = false;
                          _hasBeenPressed[5] = false;
                          _hasBeenPressed[6] = false;
                        })
                      },
                      child: Text(
                        '12 клас',
                        style: _hasBeenPressed[7] ? kActiveText : kInactiveText,
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ParaScreen(
                                    title: 'Історія України',
                                    book: "Історія України 11 клас",
                                    author: 'О.В.Гісем, О.О.Мартинюк',
                                    image: Image(
                                      image:
                                          AssetImage('images/history_2.jpeg'),
                                      height: 100.0,
                                    ),
                                  )),
                        );
                      },
                      bookImage: Image(
                        image: AssetImage('images/history_2.jpeg'),
                      ),
                      bookTitle: 'Історія України 11 клас',
                      bookAuthor: 'О.В. Гісем, О.О. Мартинюк',
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: BookCard(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ParaScreen(
                                  title: 'Історія України',
                                  book: 'Історія України 10 клас',
                                  author: 'О.В.Гісем, О.О.Мартинюк',
                                  image: Image(
                                    image: AssetImage(
                                      'images/history_1.jpg',
                                    ),
                                    height: 100.0,
                                  )),
                            ));
                      },
                      bookImage: Image(
                        image: AssetImage('images/history_1.jpg'),
                      ),
                      bookTitle: 'Історія України 10 клас',
                      bookAuthor: 'О.В. Гісем, О.О. Мартинюк',
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: BookCard(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ParaScreen(
                                    title: 'Історія України',
                                    book: 'Історія України 9 клас',
                                    author: 'О.В.Гісем, О.О.Мартинюк',
                                    image: Image(
                                      image: AssetImage('images/history_1.jpg'),
                                      height: 100.0,
                                    ),
                                  )),
                        );
                      },
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ParaScreen(
                                    title: 'Історія України',
                                    book: 'Історія України',
                                    author: 'О.В.Гісем, О.О.Мартинюк',
                                    image: Image(
                                      image: AssetImage('images/history_1.jpg'),
                                      height: 100.0,
                                    ),
                                  )),
                        );
                      },
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
      onPressed: () {
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0)),
              child: bookImage,
            ),
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
                  // SizedBox(
                  //   height: 40,
                  // ),
                  Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const <Widget>[
                          //Change to aling
                          SizedBox(
                            width: 80,
                          ),
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
