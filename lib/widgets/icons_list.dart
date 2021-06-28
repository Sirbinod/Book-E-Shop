import 'package:books_eshop/model/icon_model.dart';
import 'package:flutter/material.dart';

final List<IconModel> headerImages = IconModel.icons;

Widget buildIconList() => (Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
              headerImages.length,
              (index) => Container(
                    width: 100,
                    child: Column(
                      children: [
                        (headerImages[index].icon),
                        Text(headerImages[index].title)
                      ],
                    ),
                  )),
        ),
      ),
    ));
