import 'package:flutter/cupertino.dart';

class BookModel {
  String image;
  String title;
  String subtitle;
  bool favorite;

  BookModel({
    @required this.image,
    @required this.title,
    @required this.subtitle,
    @required this.favorite,
  });

  static BookModel newBook = BookModel(
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLRfLBf89ogYvT0DEDCCZnu94Y8R4tgWsjt8aVBo6057NR8hc7bjNB7m0QK1q5IN04tpg&usqp=CAU",
      title: "The Time Is Now",
      subtitle: "Joan Chittister",
      favorite: true);
  static List<BookModel> books = [
    BookModel(
        image:
            "https://i1.wp.com/bestlifeonline.com/wp-content/uploads/2020/10/Harry-Potter-and-the-Chamber-of-Secrets-book-cover.jpg?resize=798%2C1200&ssl=1",
        title: "The Load",
        subtitle: "war",
        favorite: false),
    BookModel(
        image:
            "https://orion-uploads.openroadmedia.com/sm_f7e651-tolkien-lordoftherings.jpg",
        title: "The Load",
        subtitle: "war",
        favorite: false),
    BookModel(
        image:
            "https://img.thebridalbox.com/wp-content/uploads/2015/09/History-of-love.jpg",
        title: "The Load",
        subtitle: "war",
        favorite: false),
    BookModel(
        image:
            "https://i1.wp.com/bestlifeonline.com/wp-content/uploads/2020/10/Harry-Potter-and-the-Chamber-of-Secrets-book-cover.jpg?resize=798%2C1200&ssl=1",
        title: "The Load",
        subtitle: "war",
        favorite: false),
    BookModel(
        image:
            "https://orion-uploads.openroadmedia.com/sm_f7e651-tolkien-lordoftherings.jpg",
        title: "The Load",
        subtitle: "war",
        favorite: false),
    BookModel(
        image:
            "https://img.thebridalbox.com/wp-content/uploads/2015/09/History-of-love.jpg",
        title: "The Load",
        subtitle: "war",
        favorite: false)
  ];
}
