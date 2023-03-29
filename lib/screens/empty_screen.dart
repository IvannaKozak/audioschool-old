import 'package:audioschool/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../widgets/book_widget.dart';

class EmptyScreen extends StatelessWidget {
  var assetsImage = const AssetImage('images/books.png');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AudioSchool'),
        backgroundColor: Color(0xFF14284B),
      ),
      backgroundColor: const Color(0xFF213d6e),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'AudioSchool',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            BookWidget(
              id: 'xFcGre1TS9bhgFOwr3kf',
            ),
            // Image(image: assetsImage),
            // Text(
            //   textAlign: TextAlign.center,
            //   'Книжки озвучуються, незабаром будуть доступні :)',
            //   style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 16.0,
            //       fontWeight: FontWeight.bold),
            // ),
          ],
        ),
      ),
    );
  }
}
