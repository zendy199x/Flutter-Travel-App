import 'package:flutter/material.dart';
import 'package:travel/constants.dart';

AppBar buildAppBar({
  bool isTransparent = false,
  String? title,
}) {
  return AppBar(
    backgroundColor: isTransparent ? Colors.transparent : Colors.white,
    elevation: 0,
    title: Text(
      title == null ? "" : title,
      style: TextStyle(
        color: kTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        color: kIconColor,
      ),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: ClipOval(
          child: Image.asset("assets/images/profile.png"),
        ),
      ),
    ],
  );
}
