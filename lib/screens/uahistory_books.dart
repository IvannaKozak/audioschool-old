import 'package:audioschool/screens/main_screen.dart';
import 'package:flutter/material.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF213d6e),
      appBar: AppBar(
        title: Text('AudioSchool'),
        backgroundColor: Color(0xFF14284B),
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    backgroundColor: Color(0xFF081E41),
                    //side: BorderSide(color: Colors.white, width: 5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(width: 1.0, color: Colors.white)),
                    fixedSize: Size.fromWidth(110),
                  ),
                  onPressed: () {},
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
                    backgroundColor: Color(0xFFD9D9D9),
                    //side: BorderSide(color: Colors.white, width: 5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Color(0xFFD9D9D9))),
                    fixedSize: Size.fromWidth(110),
                  ),
                  onPressed: () {},
                  child: Text(
                    ' 10 клас',
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
                    backgroundColor: Color(0xFFD9D9D9),
                    //side: BorderSide(color: Colors.white, width: 5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(width: 0.0, color: Colors.white)),
                    fixedSize: Size.fromWidth(110),
                  ),
                  onPressed: () {},
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
              ],
            ),
          ),
        )
      ]),
    );
  }
}
