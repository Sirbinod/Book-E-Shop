import 'package:flutter/material.dart';

List<Widget> buildBookDesc() => [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Text(
              "The book description is the pitch to the reader about why they should buy your book. When done right, it directly drives book sales. A book is a medium for recording information in the form of writing or images, typically composed of many pages bound together and protected by a cover.",
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Share"),
            TextButton(
              onPressed: () {},
              child: Text("One Click Purchase"),
              style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                  minimumSize: Size(5, 5),
                  backgroundColor: Colors.deepOrange,
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0))),
            )
          ],
        ),
      )
    ];
