import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class ChangeAvatarScreen extends StatefulWidget {
  static String routeName = '/profile/update/avatar';

  @override
  _ChangeAvatarScreenState createState() => _ChangeAvatarScreenState();
}

class _ChangeAvatarScreenState extends State<ChangeAvatarScreen> {
  int selectedIndex = -1;

  List<Map> avatars = [
    {
      "icon": Icons.ac_unit,
      "color": Colors.red[100],
    },
    {
      "icon": Icons.ac_unit,
      "color": Colors.green[100],
    },
    {
      "icon": Icons.ac_unit,
      "color": Colors.blue[100],
    },
    {
      "icon": Icons.ac_unit,
      "color": Colors.yellow[100],
    },
    {
      "icon": Icons.ac_unit,
      "color": Colors.purple[100],
    },
    {
      "icon": Icons.ac_unit,
      "color": Colors.cyan[100],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change Avatar',
          style: mediumTextBold,
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            child: GridView.builder(
              itemCount: avatars.length,
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, int index) {
                return Container(
                  margin: EdgeInsets.all(8),
                  child: buildAvatarCard(
                    index,
                    avatars[index]['color'],
                  ),
                );
              },
            ),
          ),
          RoundedButton(
            color: secondaryColor,
            text: "Change Avatar",
            textColor: Colors.white,
            press: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }

  Widget buildAvatarCard(int index, Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
            border: (selectedIndex == index)
                ? Border.all(
                    color: primaryColor,
                    width: 3,
                  )
                : Border.all(
                    color: Colors.transparent,
                    width: 3,
                  ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/images/avatar.png'),
          ),
        ),
      ),
    );
  }
}
