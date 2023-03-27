import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppbarWidget extends AppBar {
  AppbarWidget(
      {required BuildContext context, required String titleText, super.key})
      : super(
          title: Row(
            children: [
              GestureDetector(
                child: Icon(Icons.arrow_back_ios),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  titleText,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ],
          ),
          backgroundColor: Color(0xfff1f1f1),
          automaticallyImplyLeading: false,
        );
}
