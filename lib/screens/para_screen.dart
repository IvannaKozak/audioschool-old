import 'package:audioschool/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:audioschool/constants.dart';
import 'package:audioschool/books_card.dart';
import 'package:audioschool/screens/play_screen.dart';

class ParaScreen extends StatelessWidget {
  ParaScreen({
    required this.Title,
    required this.TopText,
    required this.TopAuthor,
    required this.TopImage,
  });
  final String Title;
  final String TopText;
  final String TopAuthor;
  final Image TopImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF213d6e),
      appBar: AppBar(
        title: Text(Title),
        backgroundColor: Color(0xFF14284B),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: TopImage),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        children: [
                          Text(
                            TopText,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            TopAuthor,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: Column(
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PlayScreen(
                                  Title: 'Історія України',
                                  TopText: 'Біологія 10 клас',
                                  TopAuthor: 'О.В.Гісем, О.О.Мартинюк',
                                  TopImage: Image(
                                    image: AssetImage(
                                      'images/history_1.jpg',
                                    ),
                                    height: 100.0,
                                  )),
                            ));
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff081E41),
                        fixedSize: Size(320, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_arrow_outlined,
                              color: Colors.white,
                              size: 32.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Text(
                                '§1. Вступ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.download_rounded,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff081E41),
                        fixedSize: Size(320, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_arrow_outlined,
                              color: Colors.white,
                              size: 32.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Text(
                                '§2. Перша світова...',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.download_rounded,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff081E41),
                        fixedSize: Size(320, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_arrow_outlined,
                              color: Colors.white,
                              size: 32.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Text(
                                '§3. Воєнні дії на те...',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.download_rounded,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff081E41),
                        fixedSize: Size(320, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_arrow_outlined,
                              color: Colors.white,
                              size: 32.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Text(
                                '§4. Воєнні дії на те...',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.download_rounded,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff081E41),
                        fixedSize: Size(320, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_arrow_outlined,
                              color: Colors.white,
                              size: 32.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Text(
                                '§5. Воєнні дії на те...',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.download_rounded,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff081E41),
                        fixedSize: Size(320, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_arrow_outlined,
                              color: Colors.white,
                              size: 32.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Text(
                                '§6. Воєнні дії на те...',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.download_rounded,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff081E41),
                        fixedSize: Size(320, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_arrow_outlined,
                              color: Colors.white,
                              size: 32.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Text(
                                '§7. Воєнні дії на те...',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.download_rounded,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff081E41),
                        fixedSize: Size(320, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_arrow_outlined,
                              color: Colors.white,
                              size: 32.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Text(
                                '§7. Воєнні дії на те...',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.download_rounded,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff081E41),
                        fixedSize: Size(320, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_arrow_outlined,
                              color: Colors.white,
                              size: 32.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Text(
                                '§7. Воєнні дії на те...',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.download_rounded,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff081E41),
                        fixedSize: Size(320, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_arrow_outlined,
                              color: Colors.white,
                              size: 32.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Text(
                                '§7. Воєнні дії на те...',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.download_rounded,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
