import 'package:flutter/material.dart';
import 'package:testportal_suitmedia/utils/constants.dart';
import 'package:testportal_suitmedia/views/second_screen/widgets/app_bar_widget.dart';
import 'package:testportal_suitmedia/views/second_screen/widgets/choose_a_user_button.dart';
import 'package:testportal_suitmedia/views/third_screen/views/third_screen.dart';

class SecondScreen extends StatefulWidget {
  static const String routeName = 'second-screen';
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBarWidgetSecondScreen(context),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                      fontSize: Constants.fontSmall,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'John Doe',
                  style: TextStyle(
                      fontSize: Constants.fontSemiBig,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Selected User Name',
                  style: TextStyle(
                      fontSize: Constants.fontExtraBig,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            ChooseAUserButton(
              onPressed: () {
                Navigator.pushNamed(context, ThirdScreen.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
