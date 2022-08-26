import 'package:audioschool/screens/books_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF213d6e),
      appBar: AppBar(
        title: Text('AudioSchool'),
        backgroundColor: Color(0xFF14284B),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  backgroundColor: Color(0xFF2457AF),
                  //side: BorderSide(color: Colors.white, width: 5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(width: 5.0, color: Colors.white)),
                  fixedSize: Size.fromWidth(320),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BooksScreen()),
                  );
                },
                child: Text(
                  'Історія України',
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  backgroundColor: Color(0xFFC7AD3C),
                  //side: BorderSide(color: Colors.white, width: 5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(width: 5.0, color: Colors.white)),
                  fixedSize: Size.fromWidth(320),
                ),
                onPressed: () {},
                child: Text(
                  'Всесвітня Історія',
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  backgroundColor: Color(0xFF2457AF),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(width: 5.0, color: Colors.white)),
                  fixedSize: Size.fromWidth(320),
                ),
                onPressed: () {},
                child: Text(
                  'Біологія',
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  backgroundColor: Color(0xFFC7AD3C),
                  //side: BorderSide(color: Colors.white, width: 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(width: 5.0, color: Colors.white),
                  ),
                  fixedSize: Size.fromWidth(320),
                ),
                onPressed: () {},
                child: Text(
                  'Географія',
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                'Потім буде більше...',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
