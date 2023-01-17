import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testportal_suitmedia/views/first_screen/widgets/check_button.dart';
import 'package:testportal_suitmedia/views/first_screen/widgets/next_button%20copy.dart';
import 'package:testportal_suitmedia/views/second_screen/views/second_screen.dart';

import '../../../utils/constants.dart';

class FirstScreen extends StatefulWidget {
  static const String routeName = 'first-screen';
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(Constants.backgroundGradientColors01),
                    Color(Constants.backgroundGradientColors02),
                  ]),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: size.height * 0.075,
                      backgroundColor: Colors.white.withOpacity(0.4),
                      child: SvgPicture.asset(
                        "assets/icons/user-plus.svg",
                        height: size.height * 0.028,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.065,
                    ),
                    Form(
                      child: TextFormField(
                        style:
                            TextStyle(color: Color(Constants.textStyleField)),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            hintText: "Name",
                            hintStyle: TextStyle(
                                color: Color(Constants.textStyleField),
                                fontSize: Constants.fontSemiRegular),
                            filled: true,
                            contentPadding: EdgeInsets.all(12.0),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)))),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    Form(
                      child: TextFormField(
                        style:
                            TextStyle(color: Color(Constants.textStyleField)),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            hintText: "Palindrome",
                            hintStyle: TextStyle(
                                color: Color(Constants.textStyleField),
                                fontSize: Constants.fontSemiRegular),
                            filled: true,
                            contentPadding: EdgeInsets.all(12.0),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)))),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.065,
                    ),
                    CheckButton(onPressed: () {}),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    NextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          SecondScreen.routeName,
                        );
                      },
                    ),
                  ],
                ),
              ),
            )));
  }
}
