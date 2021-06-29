import 'package:books_eshop/model/book_model.dart';
import 'package:books_eshop/screens/bookScreen.dart';
import 'package:flutter/material.dart';

final List<BookModel> books = BookModel.books;

class BookList extends StatelessWidget {
  // const BookList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black.withOpacity(0.1),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Sell",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("See All"),
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2.0, horizontal: 8.0),
                      backgroundColor: Colors.deepOrange,
                      primary: Colors.white,
                      minimumSize: Size(5, 5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                books.length,
                (index) => Padding(
                  padding: EdgeInsets.only(
                      bottom: 16.0, right: 8.0, left: index == 0 ? 8.0 : 0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BookScreen(
                                    book: books[index],
                                  )));
                    },
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 4,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(books[index].image,
                                height: 180, width: 120, fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Text(books[index].title),
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            books[index].subtitle,
                            style:
                                TextStyle(fontSize: 10, color: Colors.blueGrey),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
