import 'package:flutter/material.dart';

List<Widget> buildHeader() => [
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          'Book Sell',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Text(
          'Welcome to Book e-shope',
          style: TextStyle(color: Colors.black54),
        ),
      )
    ];
