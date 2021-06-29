import 'package:books_eshop/widgets/app_bar.dart';
import 'package:books_eshop/widgets/book_list.dart';
import 'package:books_eshop/widgets/float_button.dart';
import 'package:books_eshop/widgets/header.dart';
import 'package:books_eshop/widgets/icons_list.dart';
import 'package:books_eshop/widgets/navigation_bar.dart';
import 'package:books_eshop/widgets/new_book.dart';
import 'package:books_eshop/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home_screen";
  // const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...buildHeader(),
            buildSearchBar(),
            buildIconList(),
            BookList(),
            NewBook()
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatButton(),
      bottomNavigationBar: buildNavigationBar(),
    );
  }
}
