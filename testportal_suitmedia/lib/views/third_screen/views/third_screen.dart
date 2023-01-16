import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:testportal_suitmedia/utils/constants.dart';
import 'package:testportal_suitmedia/views/third_screen/widgets/app_bar_third_screen_widget.dart';

class ThirdScreen extends StatefulWidget {
  static const String routeName = 'third-screen';
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBarWidgetThirdScreen(context),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: size.height * 0.020,
                      vertical: size.width * 0.020),
                  leading: CircleAvatar(
                      radius: size.height * 0.050,
                      child: ClipOval(
                          child: Image.asset(
                              'assets/images/list_circle_third_screen.png'))),
                  title: Text('Firstname Lastname',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(
                    'email@email.com'.toUpperCase(),
                    style: TextStyle(fontSize: Constants.fontSemiSmall),
                  ),
                ),
                Divider(
                  thickness: 0.8,
                  indent: 25.0,
                  endIndent: 25.0,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
