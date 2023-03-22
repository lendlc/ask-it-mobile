import 'package:ask_it/components/home_screen_header.dart';
import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            HomeScreenHeader(
              message: 'What do you want to do today?',
            ),
            SizedBox(
              height: 50,
            ),
            ModuleCardList(),
          ],
        ),
      ),
    );
  }
}

class ModuleCardList extends StatelessWidget {
  final List<Map> cards = [
    {
      "title": 'Learn Java Programming',
      "description": 'Learn about the basics of Java',
      "icon": Icons.lightbulb_outline_rounded,
      "route": '/learn-java'
    },
    {
      "title": 'Watch Tutorial Videos',
      "description": 'Learn from our tutors',
      "icon": Icons.ondemand_video_outlined,
      "route": '/tutor-list/videos'
    },
    {
      "title": 'Connect with a Tutor',
      "description": 'Find someone who can help you',
      "icon": Icons.connect_without_contact_outlined,
      "route": '/tutor-category'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //removes the blue stuff when scrolling
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: cards.length,
      itemBuilder: (context, index) {
        return ModuleCard(
          title: cards[index]['title'],
          description: cards[index]['description'],
          icon: cards[index]['icon'],
          onTap: () {
            Navigator.pushNamed(context, cards[index]['route']);
          },
        );
      },
    );
  }
}

class ModuleCard extends StatelessWidget {
  final String title, description;
  final IconData icon;
  final void Function()? onTap;

  const ModuleCard({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(bottom: 16),
        //height: 100,
        decoration: boxDecorationStyle,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 75,
                width: 75,
                color: primaryColor,
                child: Center(
                  child: Icon(
                    icon,
                    size: 50,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: mediumTextBold,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      description,
                      style: TextStyle(fontSize: smallText),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
