import 'package:books_eshop/model/book_model.dart';
import 'package:flutter/material.dart';

class NewBook extends StatelessWidget {
  // const NewBook({ Key? key }) : super(key: key);
  final newBook = BookModel.newBook;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hot New Release",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
        ),
        InkWell(
          onTap: () {},
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(newBook.image,
                        height: 180, width: double.infinity, fit: BoxFit.cover),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          newBook.title,
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Text(
                          newBook.subtitle,
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        )
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("4.8"),
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0, horizontal: 8.0),
                            backgroundColor: Colors.deepOrange,
                            primary: Colors.white,
                            minimumSize: Size(5, 5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)))),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
