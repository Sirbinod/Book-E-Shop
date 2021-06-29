import 'package:books_eshop/model/book_model.dart';
import 'package:flutter/material.dart';

List<Widget> buildBookView({@required BookModel book}) => [
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            book.image,
            height: 350,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          book.title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      )
    ];
