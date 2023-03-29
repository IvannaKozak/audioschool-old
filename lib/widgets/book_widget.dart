import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BookWidget extends StatefulWidget {
  const BookWidget({Key? key, required this.id}) : super(key: key);
  final String id;

  @override
  State<BookWidget> createState() => _BookWidgetState();
}

class _BookWidgetState extends State<BookWidget> {
  String book_name = '';
  String book_author = '';
  String book_image = '';
  String book_grade = '';
  String book_subject = '';

  // String titleuk = '';
  // String productCat = '';
  // String? imageUrl;
  // String price = '0.0';
  // double salePrice = 0.0;
  // bool isOnSale = false;
  // bool isPiece = false;
  @override
  void initState() {
    getBooksData();
    super.initState();
  }

  Future<void> getBooksData() async {
    try {
      final booksDoc = await FirebaseFirestore.instance
          .collection('books')
          .doc(widget.id)
          .get();
      if (booksDoc == null) {
        return;
      } else {
        //_email = userDoc.get('email');
        setState(() {
          book_name = booksDoc.get('book_name');
          book_author = booksDoc.get('book_author');
          // book_grade = booksDoc.get('book_grade');
          book_image = booksDoc.get('book_image');
          // book_subject = booksDoc.get('book_subject');
          // salePrice = productsDoc.get('salePrice');
          // isOnSale = productsDoc.get('isOnSale');
          // isPiece = productsDoc.get('isPiece');
        });
      }
    } catch (error) {
      print("SAD ERROR: $error");
      print("BOOK NAME: $book_name");
    } finally {}
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.green.withOpacity(0.3),
        child: InkWell(
          borderRadius: BorderRadius.circular(12.0),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(book_name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Image.network(
                        book_image == null
                            ? "https://www.lifepng.com/wp-content/uploads/2020/11/Apricot-Large-Single-png-hd.png"
                            : book_image!,
                        fit: BoxFit.fill,
                        width: 120,
                        height: 120,
                      ),
                    ),
                    const Spacer(),
                    PopupMenuButton(
                      itemBuilder: ((context) => []),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
