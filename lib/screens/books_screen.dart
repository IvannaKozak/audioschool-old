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
      body: Column(
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
              
            )
            ),
        ],
      ),
    );
  }
}


// class BookCard extends StatelessWidget {
//   BookCard(
//       {required onClicked, required this.text, required this.bookImage});
//   final Function onClicked;
//   final String text;
//   final AssetImage bookImage;

//   @override
//   Widget build(BuildContext context) {
//     return RawMaterialButton(
//       elevation: 0.0,
//       child: Image(image: bookImage),
//       onPressed: onClicked,
//       //shape: CircleBorder(),
//       fillColor: Color(0xFF213d6e),
//     );
//   }
// }

// CircleAvatar(
//         radius: 90.0,
//         backgroundImage: bookImage,
//       )

//Buttons


// Expanded(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.baseline,
//               textBaseline: TextBaseline.alphabetic,
//               children: <Widget>[
//                 Expanded(
//                   child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: <Widget>[
//                         Expanded(
//                             child: RainbowButton(
//                           bookImage: AssetImage('images/history_1.jpg'),
//                           text: 'Bird',
//                           colour: Colors.red,
//                           onClicked: () {
//                             setState(() {});
//                           },
//                         )),
//                         Expanded(
//                             child: RainbowButton(
//                           bookImage: AssetImage('images/history_1.jpg'),
//                           text: 'Cat',
//                           colour: Colors.orange,
//                           onClicked: () {
//                             setState(() {});
//                           },
//                         )),
//                         Expanded(
//                             child: RainbowButton(
//                           bookImage: AssetImage('images/history_1.jpg'),
//                           text: 'Dog',
//                           colour: Colors.yellow,
//                           onClicked: () {
//                             setState(() {});
//                           },
//                         )),
//                       ]),
//                 ),
//                 Expanded(
//                   child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: <Widget>[
//                         Expanded(
//                             child: RainbowButton(
//                           bookImage: AssetImage('images/history_1.jpg'),
//                           text: 'Horse',
//                           colour: Colors.green,
//                           onClicked: () {
//                             setState(() {});
//                           },
//                         )),
//                         Expanded(
//                             child: RainbowButton(
//                           bookImage: AssetImage('images/history_1.jpg'),
//                           text: 'Lion',
//                           colour: Colors.blue,
//                           onClicked: () {
//                             setState(() {});
//                           },
//                         )),
//                         Expanded(
//                             child: RainbowButton(
//                           bookImage: AssetImage('images/history_1.jpg'),
//                           text: 'Wild beast',
//                           colour: Colors.purple,
//                           onClicked: () {
//                             setState(() {});
//                           },
//                         )),
//                       ]),
//                 ),
//               ],
//             ),
//           ),