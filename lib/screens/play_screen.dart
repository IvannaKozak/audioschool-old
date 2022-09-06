import 'package:flutter/material.dart';

class PlayScreen extends StatelessWidget {
  PlayScreen({
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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
              ClipRRect(
                  borderRadius: BorderRadius.circular(15), child: TopImage),
            ]),
      ),
    );
  }
}
