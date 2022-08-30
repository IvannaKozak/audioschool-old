import 'package:audioschool/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:audioschool/constants.dart';
import 'package:audioschool/books_card.dart';

class ChapterScreen extends StatelessWidget {
  ChapterScreen({required this.TopText, required this.TopImage});
  final String TopText;
  final Image TopImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF213d6e),
      appBar: AppBar(
        title: Text('Розділи'),
        backgroundColor: Color(0xFF14284B),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(15), child: TopImage),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        TopText,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xff081E41),
                        fixedSize: Size.fromWidth(320)),
                    child: Text('Розділ 1')),
                TextButton(onPressed: () {}, child: Text('Розділ 1')),
                TextButton(onPressed: () {}, child: Text('Розділ 1')),
                TextButton(onPressed: () {}, child: Text('Розділ 1')),
                TextButton(onPressed: () {}, child: Text('Розділ 1')),
                TextButton(onPressed: () {}, child: Text('Розділ 1')),
                TextButton(onPressed: () {}, child: Text('Розділ 1')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
