import 'package:flutter/material.dart';
import 'package:testportal_suitmedia/utils/constants.dart';

PreferredSizeWidget appBarWidgetThirdScreen(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 1,
    leading: IconButton(
        color: Color(Constants.backNavigationArrow),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_rounded)),
    title: Text(
      'Third Screen',
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: Constants.fontRegular),
    ),
  );
}
