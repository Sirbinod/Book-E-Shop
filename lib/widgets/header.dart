import 'package:flutter/material.dart';

List<Widget> buildHeader() => [
      Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 16.0),
                child: Text(
                  'Book Sell',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  'Welcome to Book e-shope',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ],
          )
        ],
      )
    ];
